//
//  ScheduleViewController.swift
//  practice2
//
//  Created by Aditya Vij on 8/19/21.
//

import UIKit
class ScheduleViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        schedule.count
    }
    let teamName = "Warriors"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleCell") as? ScheduleCell
        var opponent = schedule[indexPath.row].opponent
        let day = schedule[indexPath.row].day
        let final = schedule[indexPath.row].final
        let offday = schedule[indexPath.row].offday
        if offday == true {
            opponent = "Practice"
        }
        cell?.opponent.text = opponent
        cell?.day.text = day
        cell?.result.text = final
        cell?.simulateOption.addTarget(self, action: "simulatePress:", for: .touchUpInside)
        cell?.simulateOption.tag=indexPath.row
        return cell ?? ScheduleCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    func getResultColor(team1Final : Int, team2Final : Int) -> UIColor {
        if team1Final < team2Final {
            return .red
        }
        else{
            return UIColor(red: 34/255, green: 200/255, blue: 34/255, alpha: 1.0)
        }
    }
    func getResult(team1Final : Int, team2Final : Int) -> String {
        if team1Final < team2Final {
            return "L  "
        }
        else{
            return "W  "
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduleTableView.delegate=self
        scheduleTableView.dataSource=self
    }
    var team1 : [Double] = [97.0, 88.0, 84.0, 82.0, 81.0, 82.0, 78.0, 77.0, 75.0, 76.0, 77.0, 78.0, 76.0, 73.0, 74.0]
    var team2 : [Double] = [83.0, 80.0, 81.0, 77.0, 84.0, 77.0, 79.0, 79.0, 79.0, 75.0, 73.0, 72.0, 71.0, 71.0, 72.0]
    func simulateGame(team1 : [Double], team2 : [Double]) -> [Int] {
        var starters1 = team1[0] + team1[1] + team1[2] + team1[3] + team1[4]
        starters1 = starters1 * 0.1
        var bench1 = team1[5] + team1[6] + team1[7] + team1[8] + team1[9]
        bench1 = bench1 * 0.05
        var reserves1 = team1[10] + team1[11] + team1[12] + team1[13] + team1[14]
        reserves1 = reserves1 * 0.025
        var team1Score = starters1 + bench1 + reserves1
        var starters2 = team2[0] + team2[1] + team2[2] + team2[3] + team2[4]
        starters2 = starters2 * 0.1
        var bench2 = team2[5] + team2[6] + team2[7] + team2[8] + team2[9]
        bench2 = bench2 * 0.05
        var reserves2 = team2[10] + team2[11] + team2[12] + team2[13] + team2[14]
        reserves2 = reserves2 * 0.025
        var team2Score = starters2 + bench2 + reserves2
        var team1Range = 50 + team1Score
        var team2Range = 50 + team2Score
        var team1Final = Int(round(Double.random(in: 78.0...team1Range)))
        var team2Final = Int(round(Double.random(in: 78.0...team2Range)))
        if team1Final == team2Final {
            var decide = Bool.random()
            if decide == true {
                team1Final+=1
                
            }
            else{
                team2Final+=1
            }
            
        }
        return [team1Final, team2Final]
    }
    override func viewWillAppear(_ animated: Bool) {
        let url = URL(string: "https://data.nba.net/json/cms/2019/team/warriors/schedule.json")!
        var schedule : [Game]
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            let temp = String(data: data, encoding: .utf8)!
            let json = try? JSONSerialization.jsonObject(with: data) as! NSDictionary
            let sportsContent = json!["sports_content"] as! NSDictionary
            let game = sportsContent["game"] as! [NSDictionary]
            var updatedSchedule : [Game] = []
            for scheduleGame in game{
            let home = scheduleGame["home"] as! NSDictionary
            let homeNickname = home["nickname"] as! String
            let visitor = scheduleGame["visitor"] as! NSDictionary
            let visitorNickname = visitor["nickname"] as! String
            print("finished")
            var opponent1 = ""
            if (self.teamName == homeNickname){
                opponent1 = visitorNickname
            }
            else{
                opponent1 = homeNickname
            }
            var updatedGame = Game.init(offday: false, opponent: opponent1, day: "Monday", final: "", hasFinal: false)
            updatedSchedule.append(updatedGame)
            }
            self.schedule = updatedSchedule
            DispatchQueue.main.async{
                self.scheduleTableView.reloadData()
            }
        }

        task.resume()
    }
    @IBOutlet weak var scheduleTableView: UITableView!
    // array of arrays of teams opponents will face by week
    var schedule : [Game] = []
    //Game.init(opponent: "opponent1", day: "Monday", final: ""), Game.init(offday: true, day: "Tuesday"), Game.init(opponent: "Knicks", day: "Wednesday", final: ""), Game.init(opponent: "Warriors", day: "Saturday", final: "")
    // var team 1 = 0.5 * (ratings[0] + ratings[1] + ratings[2] + ratings[3] + ratings[4]) + 0.3 * (ratings[5] + ratings[6] + ratings[7] + ratings[8] + ratings[9]) + 0.1 * (ratings[10] + ratings[11] + ratings[12] + ratings[
    //team 1: rating of 0.5(PG + SG + SF + PF + C) + 0.3(pg + sg + sf + pf + c) + 0.1(10 + 11 + 12 + 13 + 14 + 15)
    // team 2: rating of 0.5(PG + SG + SF + PF + C) + 0.3(pg + sg + sf + pf + c) + 0.1(10 + 11 + 12 + 13 + 14 + 15)
    // team 1 points: 84 to 84 + team 1 / 2
    // team 2 points: 84 to 84 + team 2 / 2
    // random (team1 points)
    // random (team2 points)
    // if team1 points == team2points {random(0..2}, if 0, then team1 points+= 1, else team2 points += 1
    // if team1 points > team2 points {team 1 wins}
    // if team2 points > team 1 points {team 2 wins}
    // userTeam = team1
    // if team1 wins, print (W: team1 points - team2 points) [green font]
    //else, print (L: team1 points - team2 points) [red font]

    @IBAction func simulatePress(_ sender: UIButton) {
        for index in 0...sender.tag {
            if schedule[index].hasFinal == false {
                let result = scheduleTableView.cellForRow(at: IndexPath(row: index, section: 0)) as? ScheduleCell
                var scores = simulateGame(team1: team1, team2: team2)
                var final = "\(scores[0]) - \(scores[1])"
                if (result != nil){
                    var finalText = getResult(team1Final: scores[0], team2Final: scores[1]) + final
                    result!.result.text = finalText
                    result!.result.textColor = getResultColor(team1Final: scores[0], team2Final: scores[1])
                    result!.simulateOption.isHidden = true
                    schedule[index].hasFinal = true
                    schedule[index].final = finalText
                }
                
            }
        }
    }
}

struct Game {
    var offday = false
    var opponent = ""
    var day = ""
    var final = ""
    var hasFinal = false
    var win = true
}

struct ScheduleGame {
    var id: String
    var game_url: String
    var season_id: String
    var date: String
    var time: String
    var arena: String
    var city: String
    var state: String
    var country: String
    var home_start_date: String
    var home_start_time: String
    var visitor_start_date: String
    var visitor_start_time: String
    var previewAvailable: String
    var recapAvailable: String
    var notebookAvailable: String
    var tnt_ot: String
    var ticket_link: String
    var ticket_link_mobile:String
    var ticket_link_sch:String
    var ticket_link_tix:String
    var ticket_link_gb:String
    var ticket_link_csb:String
    var broadcasters : Broadcasters
    var period_time : PeriodTime
    var visitor : Visitor
    var home : Home
    var is_home_team : String
    var outcome : String
}
struct PeriodTime {
    var period_value : String
    var period_status: String
    var game_status: String
    var game_clock: String
    var total_periods: String
    var period_name: String
}
struct Visitor {
    var id : String
    var team_key : String
    var city : String
    var abbreviation : String
    var nickname : String
    var url_name : String
    var team_code : String
    var score : String
}
struct Home {
    var id:String
    var team_key:String
    var city:String
    var abbreviation:String
    var nickname:String
    var url_name:String
    var team_code:String
    var score:String
}
struct Broadcasters{
    var radio : Radio
    var tv : Tv
    
}
struct Radio {
    var broadcaster: [Broadcaster]
}
struct Broadcaster {
    var scope : String
    var home_visitor : String
    var display_name : String
}
struct Tv {
    var broadcaster: [Broadcaster]
}

struct GameData {
    var sports_content : SportsContent
}
struct SportsContent {
    var game : [ScheduleGame]
    var sports_meta : SportsMeta
}
struct SportsMeta {
    var date_time : String
    var end_to_end_time_millis : String
    var consolidatedDomKey : String
    var season_meta : SeasonMeta
    var next : Next
}
struct SeasonMeta {
    var calendar_date: String
    var season_year: String
    var stats_season_year : String
    var stats_season_id: String
    var stats_season_stage: String
    var roster_season_year: String
    var schedule_season_year: String
    var standings_season_year: String
    var season_id: String
    var display_year: String
    var display_season: String
    var season_stage: String
    var league_id: String
}
struct Next {
    var url: String
}

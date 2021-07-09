//
//  File.swift
//  practice2
//
//  Created by Aditya Vij on 5/10/21.
//
import UIKit
import Foundation

class SecondViewController: TeamTableController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    var teams = ["Atlanta Hawks",
                 "Boston Celtics",
                 "Brooklyn Nets",
                 "Charlotte Hornets",
                 "Chicago Bulls",
                 "Cleveland Cavaliers",
                 "Dallas Mavericks",
                 "Denver Nuggets",
                 "Detroit Pistons",
                 "Golden State Warriors",
                 "Houston Rockets",
                 "Indiana Pacers",
                 "Los Angeles Clippers",
                 "Los Angeles Lakers",
                 "Memphis Grizzlies",
                 "Miami Heat",
                 "Milwaukee Bucks",
                 "Minnesota Timberwolves",
                 "New Orleans Pelicans",
                 "New York Knicks",
                 "Oklahoma City Thunder",
                 "Orlando Magic",
                 "Philadelphia 76ers",
                 "Phoenix Suns",
                 "Portland Trail Blazers",
                 "Sacramento Kings",
                 "San Antonio Spurs",
                 "Toronto Raptors",
                 "Utah Jazz",
                 "Washington Wizards"]
    var salaryCaps = ["115M", "130M", "167M", "107M", "128M", "126M", "125M", "129M", "115M", "169M", "128M", "129M", "137M", "137M", "131M", "132M", "132M", "130M", "133M", "100M", "105M", "114M", "146M", "127M", "130M", "122M", "129M", "128M", "136M", "130M"]
    var playersOnTeams = [
        "Hawks" : ["T. Young", "K. Heurter", "D. Hunter", "J. Collins", "C. Capela"],
        "Celtics" : ["P. Pritchard", "M. Smart", "J. Brown", "J. Tatum", "T. Thompson"],
        "Nets" : ["K. Irving", "J. Harden", "K. Durant", "B. Griffin", "D. Jordan"],
        "Hornets" : ["D. Graham", "T. Rozier", "G. Hayward", "P. Washington", "B. Biyombo"],
        "Bulls" : ["C. White", "Z. LaVine", "P. Williams", "L. Markkanen", "N. Vucevic"],
        "Cavaliers" : ["C. Sexton", "D. Garland", "C. Osman", "K. Love", "J. Allen"],
        "Mavericks" : ["L. Dončić", "T. Hardaway Jr.", "D. Finney-Smith", "K. Porzingis", "B. Marjanović"],
        "Nuggets" : ["J. Murray", "W. Barton", "A. Gordon", "M. Porter Jr.", "N. Jokic"],
        "Pistons" : ["Killian Hayes", "H. Diallo", "S. Bey", "J. Grant", "M. Plumlee"],
        "Warriors" : ["S. Curry", "K. Thompson", "A. Wiggins", "D. Green", "J. Wiseman"],
        "Rockets" : ["J. Wall", "K. Porter Jr.", "J. Tate", "K. Martin Jr.", "C. Wood"],
        "Pacers" : ["M. Brogdon", "C. LeVert", "T. Warren", "D. Sabonis", "M. Turner"],
        "Clippers" : ["R. Jackson", "P. George", "K. Leonard", "M. Morris", "I. Zubac"],
        "Lakers" : ["D. Schröder", "K. Caldwell-Pope", "L. James", "A. Davis", "A. Drummond"],
        "Grizzlies" : ["J. Morant", "D. Brooks", "K. Anderson", "J. Jackson Jr.", "J. Valančiūnas"],
        "Heat" : ["T. Herro", "V. Oladipo", "J. Butler", "P. Achiuwa", "B. Adebayo"],
        "Bucks" : ["J. Holiday", "D. DiVincenzo", "K. Middleton", "G. Antetoukounmpo", "B. Lopez"],
        "Timberwolves" : ["D. Russell", "A. Edwards", "J. McDaniels", "J. Hernangomez", "K. Anthony-Towns"],
        "Pelicans" : ["L. Ball", "N. Alexander-Walker", "B. Ingram", "Z. Williamson", "S. Adams"],
        "Knicks" : ["D. Rose", "R. Barrett", "O. Toppin", "J. Randle", "M. Robinson"],
        "Thunder" : ["K. Walker", "S. Gilgeous-Alexander", "L. Dort", "D. Bazley", "I. Roby"],
        "Magic" : ["C. Anthony", "M. Fultz", "O. Porter Jr.", "J. Isaac", "M. Bamba"],
        "76ers" : ["B. Simmons", "M. Thybulle", "D. Green", "T. Harris", "J. Embiid"],
        "Suns" : ["C. Paul", "D. Booker", "M. Bridges", "J. Crowder", "D. Ayton"],
        "Trail Blazers" : ["D. Lillard", "C. McCollum", "N. Powell", "R. Covington", "Jusuf Nurkić"],
        "Kings" : ["D. Fox", "B. Hield", "H. Barnes", "M. Bagley III", "H. Whiteside"],
        "Spurs" : ["D. Murray", "K. Johnson", "D. DeRozan", "R. Gay", "J. Poeltl"],
        "Raptors" : ["K. Lowry", "G. Trent Jr.", "O. Anunoby", "P. Siakam", "A. Baynes"],
        "Jazz" : ["M. Conley", "D. Mitchell", "R. O'Neale", "B. Bogdanavić", "R. Gobert"],
        "Wizards" : ["R. Westbrook", "B. Beal", "R. Hachimura", "D. Bertans", "D. Gafford"]
        ]
    @IBOutlet weak var TeamTable: UITableView!
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell") as? TeamCell
        let salaryCapLabel = salaryCaps[indexPath.row]
        let teamLabel = teams[indexPath.row]
        cell?.salaryCapLabel.text=salaryCapLabel
        cell?.teamLabel.text=teamLabel
        return cell ?? TeamCell()
    }
    var selectedRoster = "Atlanta Hawks"
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "individualTeamSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "individualTeamSegue" {
            let individualTeamView = segue.destination as! IndividualTeamView
            individualTeamView.players = ["T. Young", "K. Heurter", "D. Hunter", "J. Collins", "C. Capela"]
        }
    }
    @IBOutlet weak var secondViewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TeamTable.delegate=self
        self.TeamTable.dataSource=self
        // Do any additional setup after loading the view.
    }
    

}


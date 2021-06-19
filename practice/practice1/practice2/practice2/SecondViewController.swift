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
    @IBOutlet weak var TeamTable: UITableView!
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell") as? TeamCell
        let salaryCapLabel = salaryCaps[indexPath.row]
        let teamLabel = teams[indexPath.row]
        cell?.salaryCapLabel.text=salaryCapLabel
        cell?.teamLabel.text=teamLabel
        return cell ?? TeamCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicked " + String(indexPath.row))
        self.performSegue(withIdentifier: "tableToView", sender: self)
    }
    @IBOutlet weak var secondViewTable: UITableView!
    
    @IBAction func backButton(_ sender: Any) {
        print("back button pressed")
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TeamTable.delegate=self
        self.TeamTable.dataSource=self
        // Do any additional setup after loading the view.
    }


}

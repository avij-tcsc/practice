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
    var teams = ["Hawks",
                 "Celtics",
                 "Nets",
                 "Hornets",
                 "Bulls",
                 "Cavaliers",
                 "Mavericks",
                 "Nuggets",
                 "Pistons",
                 "Warriors",
                 "Rockets",
                 "Pacers",
                 "Clippers",
                 "Lakers",
                 "Grizzlies",
                 "Heat",
                 "Bucks",
                 "Timberwolves",
                 "Pelicans",
                 "Knicks",
                 "Thunder",
                 "Magic",
                 "Sixers",
                 "Suns",
                 "Blazers",
                 "Kings",
                 "Spurs",
                 "Raptors",
                 "Jazz",
                 "Wizards"]
    var salaryCaps = ["115M", "130M", "167M", "107M", "128M", "126M", "125M", "129M", "115M", "169M", "128M", "129M", "137M", "137M", "131M", "132M", "132M", "130M", "133M", "100M", "105M", "114M", "146M", "127M", "130M", "122M", "129M", "128M", "136M", "130M"]
    var playersOnTeams = [
    ["T. Young", "K. Heurter", "D. Hunter", "J. Collins", "C. Capela"], ["P. Pritchard", "M. Smart", "J. Brown", "J. Tatum", "T. Thompson"], ["K. Irving", "J. Harden", "K. Durant", "B. Griffin", "D. Jordan"], ["D. Graham", "T. Rozier", "G. Hayward", "P. Washington", "B. Biyombo"], ["C. White", "Z. LaVine", "P. Williams", "L. Markkanen", "N. Vucevic"], ["C. Sexton", "D. Garland", "C. Osman", "K. Love", "J. Allen"], ["L. Dončić", "T. Hardaway Jr.", "D. Finney-Smith", "K. Porzingis", "B. Marjanović"], ["J. Murray", "W. Barton", "A. Gordon", "M. Porter Jr.", "N. Jokic"], ["Killian Hayes", "H. Diallo", "S. Bey", "J. Grant", "M. Plumlee"], ["S. Curry", "K. Thompson", "A. Wiggins", "D. Green", "J. Wiseman"], ["J. Wall", "K. Porter Jr.", "J. Tate", "K. Martin Jr.", "C. Wood"], ["M. Brogdon", "C. LeVert", "T. Warren", "D. Sabonis", "M. Turner"], ["R. Jackson", "P. George", "K. Leonard", "M. Morris", "I. Zubac"], ["D. Schröder", "K. Caldwell-Pope", "L. James", "A. Davis", "A. Drummond"], ["J. Morant", "D. Brooks", "K. Anderson", "J. Jackson Jr.", "J. Valančiūnas"], ["T. Herro", "V. Oladipo", "J. Butler", "P. Achiuwa", "B. Adebayo"], ["J. Holiday", "D. DiVincenzo", "K. Middleton", "G. Antetoukounmpo", "B. Lopez"], ["D. Russell", "A. Edwards", "J. McDaniels", "J. Hernangomez", "K. Anthony-Towns"], ["L. Ball", "N. Alexander-Walker", "B. Ingram", "Z. Williamson", "S. Adams"], ["D. Rose", "R. Barrett", "O. Toppin", "J. Randle", "M. Robinson"], ["K. Walker", "S. Gilgeous-Alexander", "L. Dort", "D. Bazley", "I. Roby"], ["C. Anthony", "M. Fultz", "O. Porter Jr.", "J. Isaac", "M. Bamba"], ["B. Simmons", "M. Thybulle", "D. Green", "T. Harris", "J. Embiid"], ["C. Paul", "D. Booker", "M. Bridges", "J. Crowder", "D. Ayton"], ["D. Lillard", "C. McCollum", "N. Powell", "R. Covington", "Jusuf Nurkić"], ["D. Fox", "B. Hield", "H. Barnes", "M. Bagley III", "H. Whiteside"], ["D. Murray", "K. Johnson", "D. DeRozan", "R. Gay", "J. Poeltl"], ["K. Lowry", "G. Trent Jr.", "O. Anunoby", "P. Siakam", "A. Baynes"], ["M. Conley", "D. Mitchell", "R. O'Neale", "B. Bogdanavić", "R. Gobert"], ["R. Westbrook", "B. Beal", "R. Hachimura", "D. Bertans", "D. Gafford"]
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = TeamTable.indexPathForSelectedRow!.row
        let selectedRoster = self.teams[index]
        if segue.identifier == "individualTeamSegue" {
            let individualTeamView = segue.destination as! IndividualTeamView
            individualTeamView.players = playersOnTeams[index]
            individualTeamView.name = selectedRoster
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


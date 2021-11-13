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
        ["T. Young", "K. Heurter", "D. Hunter", "J. Collins", "C. Capela", "L. Williams", "B. Bogdanavić", "C. Reddish", "D. Gallinari", "O. Okongwu", "S. Cooper", "D. Wright", "J. Johnson", "S. Hill", "G. Dieng"], ["M. Smart", "J. Richardson", "J. Brown", "J. Tatum", "R. Williams", "P. Pritchard", "K. Dunn", "G. Williams", "A. Horford", "E. Kanter", "R. Langford", "A. Nesmith", "C. Edwards", "S. Ojeleye", "T. Fall"], ["J. Harden", "K. Irving", "J. Harris", "K. Durant", "D. Jordan", "P. Mills", "T. Luwawu-Cabarrot", "B. Brown", "B. Griffin", "N. Claxton", "T. Johnson", "A. Johnson", "D. Bembry", "D. Sharpe", "J. Carter"], ["L. Ball", "T. Rozier", "G. Hayward", "P. Washington", "M. Plumlee", "I. Smith", "J. Bouknight", "K. Oubre Jr.", "M. Bridges", "B. Biyombo", "J. McDaniels", "W. Iwundu", "V. Carey Jr.", "C. Martin", "K. Jones"], ["L. Ball", "Z. LaVine", "D. DeRozan", "L. Markkanen", "N. Vucevic", "C. White", "A. Caruso", "P. Williams", "T. Brown Jr.", "T. Bradley", "A. Dosunmu", "D. Theis", "T. Brown", "J. Green", "O. Spellman", "M. Simonovic", "D. Dotson"], ["C. Sexton", "D. Garland", "I. Okoro", "K. Love", "J. Allen", "R. Rubio", "D. Dotson", "C. Osman", "L. Nance Jr.", "E. Mobley", "D. Wade", "I. Hartenstein", "L. Stevens", "B. Thomas", "M. Kabengale"], ["L. Dončić", "T. Hardaway Jr.", "D. Finney-Smith", "K. Porzingis", "B. Marjanović", "T. Burke", "J. Brunson", "R. Bullock", "M. Kleber", "M. Brown", "D. Powell", "W. Cauley-Stein", "J. Reddick", "J. Green", "S. Brown"], ["J. Murray", "W. Barton", "M. Porter Jr.", "A. Gordon", "N. Jokic", "M. Morris", "A. Rivers", "P. Dozier", "J. Green", "J. Green", "F. Campazzo", "B. Bol", "M. Howard", "S. Harrison"], ["K. Hayes", "C. Cunningham", "S. Bey", "J. Grant", "I. Stewart", "C. Joseph", "J. Jackson", "H. Diallo", "S. Doumboya", "S. Lee", "J. Okafor", "T. Lyles", "L. Garza", "R. McGruder", "F. Jackson"], ["S. Curry", "K. Thompson", "A. Wiggins", "D. Green", "J. Wiseman", "K. Oubre Jr.", "K. Looney", "J. Poole", "M. Moody", "J. Kuminga", "A. Igoudala", "K. Looney", "O. Porter Jr.", "C. Chiozza", "J. Toscano-Anderson", "N. Bjelica", "D. Lee"], ["J. Wall", "K. Porter Jr.", "J. Green", "D. Theis", "C. Wood", "D. Augustin", "D. House Jr.", "J. Tate", "K. Martin Jr.", "A. Sengun", "J. Cristopher", "U. Garuba", "A. Brooks", "K. Thomas", "A. Lamb"], ["M. Brogdon", "C. LeVert", "T. Warren", "D. Sabonis", "M. Turner", "T. McConnell", "J. Lamb", "J. Holiday", "T. Craig", "G. Bitadze", "E. Sumner", "C. Duarte", "I. Jackson", "O. Brissett", "K. Martin"], ["R. Jackson", "P. George", "K. Leonard", "M. Morris", "I. Zubac", "P. Beverly", "T. Mann", "L. Kennard", "N. Batum", "S. Ibaka", "J. Preston", "R. Rondo", "J. Winslow", "D. Cousins", "P. Patterson"], ["R. Westbrook", "W. Ellington", "L. James", "A. Davis", "M. Gasol", "K. Nunn", "M. Monk", "T. Ariza", "C. Anthony", "D. Howard", "T. Horton-Tucker", "K. Bazemore", "M. Morris", "K. Antetokounmpo", "D. Cacok"], ["J. Morant", "D. Brooks", "K. Anderson", "J. Jackson Jr.", "S. Adams", "E. Bledsoe", "G. Allen", "B. Clarke", "J. Winslow", "X. Tillman", "T. Jones", "D. Melton", "T. Frazier", "K. Tillie", "D. Bane"], ["G. Dragić", "V. Oladipo", "J. Butler", "P. Achiuwa", "B. Adebayo", "D. Robinson", "T. Herro", "K. Nunn", "A. Igoudala", "D. Dedmon", "T. Ariza", "N. Bjelica", "Ö. Yurtseven", "G. Vincent", "U. Haslem"], ["J. Holiday", "K. Middleton", "G. Antetoukounmpo", "P. Tucker", "B. Lopez", "B. Portis", "P. Connaughton", "D. DiVincenzo", "B. Forbes", "J. Jackson", "J. Teague", "T. Antetoukounmpo", "S. Merrill", "A. Toupane", "J. Nwora"], ["D. Russell", "A. Edwards", "J. McDaniels", "J. Okogie", "K. Anthony-Towns", "R. Rubio", "N. Reid", "M. Beasley", "J. Culver", "J. Vanderbilt", "J. Hernangomez", "J. Layman", "J. Nowell", "J. McLaughin", "E. Davis"], ["L. Ball", "N. Alexander-Walker", "B. Ingram", "Z. Williamson", "J. Valančiūnas", "J. Hayes", "J. Hart", "K. Lewis Jr.", "D. Louzada", "I. Thomas", "N. Marshall", "W. Hernangomez", "W. Gabriel", "W. Iwundu", "J. Nunnally"], ["E. Payton", "R. Barrett", "R. Bullock", "J. Randle", "M. Robinson", "D. Rose"], ["K. Walker", "S. Gilgeous-Alexander", "L. Dort", "D. Bazley", "I. Roby", "T. Maledon"], ["C. Anthony", "G. Harris", "O. Porter Jr.", "J. Isaac", "M. Bamba", "M. Fultz"], ["B. Simmons", "M. Thybulle", "D. Green", "T. Harris", "J. Embiid", "S. Milton"], ["C. Paul", "D. Booker", "M. Bridges", "J. Crowder", "D. Ayton", "C. Johnson", "C. Payne", "D. Saric", "F. Kaminsky", "A. Nader", "E. Moore", "T. Alexander", "J. Smith", "L. Galloway", "J. Carter"], ["D. Lillard", "C. McCollum", "C. Anthony", "R. Covington", "Jusuf Nurkić", "N. Powell"], ["D. Fox", "B. Hield", "H. Barnes", "M. Bagley III", "H. Whiteside", "T. Haliburton"], ["D. Murray", "K. Johnson", "D. DeRozan", "R. Gay", "J. Poeltl", "L. Walker IV"], ["K. Lowry", "G. Trent Jr.", "O. Anunoby", "P. Siakam", "A. Baynes", "C. Boucher"], ["M. Conley", "D. Mitchell", "R. O'Neale", "B. Bogdanavić", "R. Gobert", "J. Clarkson", "J. Ingles", "G. Niang", "D. Favors", "E. Ilyasova", "E. Hughes", "T. Forrest"], ["R. Westbrook", "B. Beal", "D. Avdija", "R. Hachimura", "D. Gafford", "D. Bertans", "T. Bryant", "R. Neto", "C. Hutchison", "C. Winston", "A. Gill", "I. Smith", "R. Lopez", "A. Len", "G. Mathews"]
        ]
    
    var playerRatings = [
        ["92", "81", "82", "86", "84", "82", "79", "78", "78", "77", "75", "74", "73", "72", "71"], ["82", "87", "84", "92", "80", "78", "77", "77", "79", "77", "75", "72", "70", "70", "70"], ["94", "95", "97", "81", "79", "79", "81", "81", "76", "75", "73", "73", "70", "69"], ["86", "84", "83", "81", "79", "82", "80", "79", "76", "75", "72", "70", "70", "69", "68"], ["83", "88", "79", "84", "86", "78", "77", "76", "76", "75", "73", "73", "73", "71"], ["84", "82", "79", "80", "82", "78", "78", "76", "74", "74", "73", "72", "71", "70", "70"], ["95", "81", "80", "84", "79", "78", "77", "76", "76", "75", "74", "73", "72", "72", "71"], ["87", "80", "86", "80", "96", "79", "78", "78", "78", "77", "75", "74", "73", "72", "70", "69"], ["76", "79", "77", "84", "78", "77", "76", "75", "75", "74", "74", "73", "73", "72", "70"], ["97", "89", "84", "79", "83", "81", "78", "78", "76", "74", "74", "74", "72", "72", "69"], ["83", "82", "79", "77", "84", "78", "78", "76", "75", "75", "74", "72", "72", "71", "70"], ["M. Brogdon", "C. LeVert", "T. Warren", "D. Sabonis", "M. Turner", "D. McDermott", "O. Brissett", "T. McConnell", "A. Holiday", "J. Holiday", "G. Bitadze", "C. Stanley", "J. Lamb", "E. Sumner", "K. Martin"], ["R. Jackson", "P. George", "K. Leonard", "M. Morris", "I. Zubac", "N. Batum", "T. Mann", "L. Kennard", "S. Ibaka", "P. Beverly", "R. Rondo", "D. Cousins", "Y. Ferrell", "J. Scrubb", "P. Patterson"], ["D. Schröder", "K. Caldwell-Pope", "L. James", "A. Davis", "A. Drummond", "W. Matthews", "A. Caruso", "M. Gasol", "M. Harrell", "M. Morris", "T. Horton-Tucker", "K. Kuzma", "K. Antetoukounmpo", "B. McLemore", "A. McKinnie"], ["J. Morant", "D. Brooks", "K. Anderson", "J. Jackson Jr.", "S. Adams", "E. Bledsoe", "G. Allen", "B. Clarke", "J. Winslow", "X. Tillman", "T. Jones", "D. Melton", "T. Frazier", "K. Tillie", "D. Bane"], ["G. Dragić", "V. Oladipo", "J. Butler", "P. Achiuwa", "B. Adebayo", "D. Robinson", "T. Herro", "K. Nunn", "A. Igoudala", "D. Dedmon", "T. Ariza", "N. Bjelica", "Ö. Yurtseven", "G. Vincent", "U. Haslem"], ["J. Holiday", "K. Middleton", "G. Antetoukounmpo", "P. Tucker", "B. Lopez", "B. Portis", "P. Connaughton", "D. DiVincenzo", "B. Forbes", "J. Jackson", "J. Teague", "T. Antetoukounmpo", "S. Merrill", "A. Toupane", "J. Nwora"], ["D. Russell", "A. Edwards", "J. McDaniels", "J. Okogie", "K. Anthony-Towns", "R. Rubio", "N. Reid", "M. Beasley", "J. Culver", "J. Hernangomez"], ["L. Ball", "N. Alexander-Walker", "B. Ingram", "Z. Williamson", "J. Valančiūnas", "J. Hayes"], ["E. Payton", "R. Barrett", "R. Bullock", "J. Randle", "M. Robinson", "D. Rose"], ["K. Walker", "S. Gilgeous-Alexander", "L. Dort", "D. Bazley", "I. Roby", "T. Maledon"], ["C. Anthony", "G. Harris", "O. Porter Jr.", "J. Isaac", "M. Bamba", "M. Fultz"], ["B. Simmons", "M. Thybulle", "D. Green", "T. Harris", "J. Embiid", "S. Milton"], ["C. Paul", "D. Booker", "M. Bridges", "J. Crowder", "D. Ayton", "C. Johnson"], ["D. Lillard", "C. McCollum", "C. Anthony", "R. Covington", "Jusuf Nurkić", "N. Powell"], ["D. Fox", "B. Hield", "H. Barnes", "M. Bagley III", "H. Whiteside", "T. Haliburton"], ["D. Murray", "K. Johnson", "D. DeRozan", "R. Gay", "J. Poeltl", "L. Walker IV"], ["K. Lowry", "G. Trent Jr.", "O. Anunoby", "P. Siakam", "A. Baynes", "C. Boucher"], ["M. Conley", "D. Mitchell", "R. O'Neale", "B. Bogdanavić", "R. Gobert", "J. Clarkson"], ["R. Westbrook", "B. Beal", "D. Avdija", "R. Hachimura", "D. Gafford", "D. Bertans"]
        ]
    var playerAges = ["30"]
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


//if a player is 18-26, they will grow by  1 overall each year (set / without training camps)
//once a player reaches age 26, they grow by 2 overall each year until age 33
//after that, they start to degrade by 1 or 2 overall each year until age 37
//once 37, they degrade by 5 overall each year

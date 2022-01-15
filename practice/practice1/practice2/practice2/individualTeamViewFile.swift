//
//  individualTeamViewFile.swift
//  practice2
//
//  Created by Aditya Vij on 6/30/21.
//

import UIKit
import Foundation

class IndividualTeamView: UIViewController {
    @IBAction func backButton(_ sender: Any) {
        print("back button pressed")
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var teamName: UILabel!
    var players = ["Point Guard", "Shooting Guard", "Small Forward", "Power Forward", "Center", "Sixth Man", "Seventh", "Eighth", "Ninth", "Tenth", "Eleventh", "Twelfth", "Thirteenth", "Fourteenth", "Fifteenth"]
    var name = "Name"

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
    @IBOutlet weak var pointGuard: UILabel!
    @IBOutlet weak var shootingGuard: UILabel!
    @IBOutlet weak var smallForward: UILabel!
    @IBOutlet weak var powerForward: UILabel!
    @IBOutlet weak var center: UILabel!
    @IBOutlet weak var sixthMan: UILabel!
    @IBOutlet weak var seventh: UILabel!
    @IBOutlet weak var eighth: UILabel!
    @IBOutlet weak var ninth: UILabel!
    @IBOutlet weak var tenth: UILabel!
    @IBOutlet weak var eleventh: UILabel!
    @IBOutlet weak var twelfth: UILabel!
    @IBOutlet weak var thirteenth: UILabel!
    @IBOutlet weak var fourteenth: UILabel!
    @IBOutlet weak var fifteenth: UILabel!
    @IBOutlet weak var team: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        pointGuard.text = players[0]
        shootingGuard.text = players[1]
        smallForward.text = players[2]
        powerForward.text = players[3]
        center.text = players[4]
        sixthMan.text = players[5]
        seventh.text = players[6]
        eighth.text = players[7]
        ninth.text = players[8]
        tenth.text = players[9]
        eleventh.text = players[10]
        twelfth.text = players[11]
        thirteenth.text = players[12]
        fourteenth.text = players[13]
        fifteenth.text = players[14]
        team.text = name
    }
    @IBAction func selectTeamButton(_ sender: Any) {
        let alert = UIAlertController(title: selectedTeamName, message: "Are you sure you want to select the \(name)?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {_ in
            selectedTeamName = self.name
            teamPlayers = self.players
            self.performSegue(withIdentifier: "popUpToTabSegue", sender: self)
            
            
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {_ in alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popUpToTeamSegue" {
            let managementTabBar = segue.destination as! ManagementTabBar
            managementTabBar.players = players
        }
    
    }
    
}

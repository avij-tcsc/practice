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
    var players = ["Point Guard", "Shooting Guard", "Small Forward", "Power Forward", "Center"]
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
    @IBOutlet weak var team: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        pointGuard.text = players[0]
        shootingGuard.text = players[1]
        smallForward.text = players[2]
        powerForward.text = players[3]
        center.text = players[4]
        team.text = name
    }
}

//
//  RosterViewController.swift
//  practice2
//
//  Created by Aditya Vij on 8/5/21.
//
import UIKit
class RosterViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    var team = ""
    var players: [String] = []
    override func viewDidLoad(){
        let tabBar = self.tabBarController as? ManagementTabBar
        players = tabBar?.players ?? ["PG", "SG", "SF", "PF", "C", "PG", "SG", "SF", "PF", "C", "11", "12", "13", "14", "15"]
        team = tabBar?.team ?? "NBA"
        rosterTableView.delegate=self
        rosterTableView.dataSource=self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RosterCell") as? PlayerCell
        let position = positions[indexPath.row]
        let playerName = players[indexPath.row]
        let playerRating = players[indexPath.row]
        cell?.position.text=position
        cell?.playerName.text=playerName
        cell?.playerRating.text=playerRating
        return cell ?? TeamCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    var positions = ["PG", "SG", "SF", "PF", "C", "PG", "SG", "SF", "PF", "C", "11", "12", "13", "14", "15"]
    @IBOutlet weak var rosterTableView: UITableView!
    
}

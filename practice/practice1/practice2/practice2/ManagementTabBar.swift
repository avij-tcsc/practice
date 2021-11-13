//
//  Management.swift
//  practice2
//
//  Created by Aditya Vij on 7/24/21.
//

import Foundation
import UIKit
class ManagementTabBar : UITabBarController {
    override func viewDidLayoutSubviews() {
        tabBar.frame = CGRect(x: 0, y: 0, width: tabBar.frame.size.width, height: tabBar.frame.size.height)
    super.viewDidLayoutSubviews()
    }
    var team = ""
    var players : [String] = []
}


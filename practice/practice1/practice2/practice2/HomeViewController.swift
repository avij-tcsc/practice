//
//  ViewController.swift
//  practice2
//
//  Created by Aditya Vij on 5/10/21.
//

import UIKit

class HomeViewController: UIViewController {
    @IBAction func NextViewButtonPressed(_ sender: Any) {
        print("Button pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View has loaded")
    }


}


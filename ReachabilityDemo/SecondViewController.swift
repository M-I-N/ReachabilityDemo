//
//  SecondViewController.swift
//  ReachabilityDemo
//
//  Created by Nayem BJIT on 9/27/18.
//  Copyright © 2018 BJIT Ltd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, Reachable {

    let reachability: Reachability = Reachability()!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        reachabilityChanged(to: reachability.connection)
        startMonitoringReachabilityChangeStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func reachabilityChanged(to: Reachability.Connection) {
        switch to {
        case .wifi:
            DispatchQueue.main.async {
                self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
            }
        case .cellular:
            DispatchQueue.main.async {
                self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        case .none:
            DispatchQueue.main.async {
                self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            }
        }
    }
}

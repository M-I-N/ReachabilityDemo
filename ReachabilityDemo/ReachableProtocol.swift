//
//  ReachableProtocol.swift
//  ReachabilityDemo
//
//  Created by Nayem BJIT on 9/27/18.
//  Copyright © 2018 BJIT Ltd. All rights reserved.
//

import Foundation

protocol Reachable {
    var reachability: Reachability { get }
    func startMonitoringReachabilityChangeStatus()
    func reachabilityChanged(to: Reachability.Connection)
}

extension Reachable {
    func startMonitoringReachabilityChangeStatus() {
        do {
            try reachability.startNotifier()
        } catch {
            print(error.localizedDescription)
        }
        reachability.whenReachable = { reachability in
            self.reachabilityChanged(to: reachability.connection)
        }
        reachability.whenUnreachable = { reachability in
            self.reachabilityChanged(to: reachability.connection)
        }
    }
}

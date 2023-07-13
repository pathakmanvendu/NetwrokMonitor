//
//  NetworkMonitorApp.swift
//  NetworkMonitor
//
//  Created by Manvendu Pathak on 13/07/23.
//

import SwiftUI

@main
struct NetworkMonitorApp: App {
    @StateObject var networkMonitor = NetworkMonitor()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkMonitor)
            
        }
    }
}

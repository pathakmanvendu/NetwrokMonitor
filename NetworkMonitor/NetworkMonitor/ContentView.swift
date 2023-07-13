//
//  ContentView.swift
//  NetworkMonitor
//
//  Created by Manvendu Pathak on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var networkMonitor: NetworkMonitor
    @State private var showNetworkAlert = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
        .onChange(of: networkMonitor.isConnected) { connection in
            showNetworkAlert = connection == false
        }
        .alert(
            "Network connection seems to be offline.",
                        isPresented: $showNetworkAlert
            ) {}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

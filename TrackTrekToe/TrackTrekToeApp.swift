//
//  TrackTrekToeApp.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 20.01.2022.
//

import SwiftUI

@main
struct TrackTrekToeApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Label("Discoveer", systemImage: "airplane.circle.fill")
                }
                 
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}

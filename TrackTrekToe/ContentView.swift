//
//  ContentView.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
         
            ScrollView {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                
                Text(location.description)
                
                Text("The Highlands is a historic region of Scotland. Culturally, the Highlands and the Lowlands diverged from the later Middle Ages into the modern period, when Lowland Scots replaced Scottish Gaelic throughout most of the Lowlands. The term is also used for the area north and west of the Highland Boundary Fault, although the exact boundaries are not clearly defined, particularly to the east. The Great Glen divides the Grampian Mountains to the southeast from the Northwest Highlands. The Scottish Gaelic name of A' Ghàidhealtachd literally means \"the place of the Gaels\" and traditionally, from a Gaelic-speaking point of view, includes both the Western Isles and the Highlands.")
                    .padding(.horizontal)
                
                
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.top)
                
                Text(location.more)
                    .padding(.horizontal)
            }
            .navigationTitle("Discover")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}

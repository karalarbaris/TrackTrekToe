//
//  Locations.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 20.01.2022.
//

import Foundation

class Locations: ObservableObject {
    
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
}


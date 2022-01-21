//
//  Location.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 20.01.2022.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Baro Mountain", country: "Turkey", description: "descriptionnnn", more: "more text", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "beware of the bears")
}

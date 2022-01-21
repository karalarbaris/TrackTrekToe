//
//  Tip.swift
//  TrackTrekToe
//
//  Created by Baris Karalar on 21.01.2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}

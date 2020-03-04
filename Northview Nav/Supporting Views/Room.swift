//
//  Room.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//
//  Contains the model that describes the information stored for each room in the school
//

import SwiftUI
import CoreLocation

struct Room: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var floor: Int
    var description: String
    var coordinates: Coordinates
    var image: String = "default"
    
    var isFeatured: Bool
    var isFavourite: Bool
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

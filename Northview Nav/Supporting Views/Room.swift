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
    var floor: Floor
    var description: String
    var coordinates: Coordinates
    var image: String
    
    var isFeatured: Bool
    var isFavourite: Bool
}

enum Floor: Int, CaseIterable, Codable, Hashable {
       case first = 1
       case second = 2
       case third = 3
   }

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

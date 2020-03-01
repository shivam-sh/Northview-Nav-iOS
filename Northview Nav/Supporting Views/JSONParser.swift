//
//  JSONParse.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-30.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit
import SwiftUI

let roomData: [Room] = load("roomData.json")

let featuredRooms = roomData.filter { $0.isFeatured }
let favourites = roomData.filter { $0.isFavourite }

let firstFloor = roomData.filter { $0.floor == Floor.first}
let secondFloor = roomData.filter { $0.floor == Floor.second}
let thirdFloor = roomData.filter { $0.floor == Floor.third}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

//
//  TempData.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2020-03-01.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import SwiftUI
import CoreLocation

var selectedRoom: Room = roomData[0]

var viewingFloor: Int = 0

var wayfindingCoords: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
var wayfindOnOpen: Bool = false

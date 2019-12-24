//
//  MapView.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct MapView: View {
    var lat: Double
    var long: Double
    
    var body: some View {
        Map(lat: lat, long: long)
            .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(lat: 43.774586, long: -79.446368)
    }
}

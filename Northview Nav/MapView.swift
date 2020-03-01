//
//  MapView.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View {
    var lat: Double = 0.0
    var long: Double = 0.0
    var initWayfinding: Bool = false
    
    @State var isLoading: Bool = UserDefaults.standard.bool(forKey: "Loading")
    
    var body: some View {
        ZStack {
            Map()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

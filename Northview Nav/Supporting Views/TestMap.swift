//
//  Map.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI
import MapKit

struct TestMap: UIViewRepresentable {
    var lat: Double
    var long: Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: lat, longitude: long)
        let span = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
    
}

struct TestMap_Previews: PreviewProvider {
    static var previews: some View {
        TestMap(lat: 43.774386, long: -79.446368)
    }
}
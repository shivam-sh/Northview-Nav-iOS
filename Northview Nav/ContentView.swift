//
//  ContentView.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-19.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                
                NavigationLink(destination: MapView(lat: 43.774586, long: -79.446368)){
                    Text("Open Map")
                }
            }
            .padding()
            .navigationBarTitle(Text("Northview Nav"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

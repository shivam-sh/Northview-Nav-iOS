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
            VStack(alignment: .leading) {
                NavigationLink(destination: MapView(lat: 43.774386, long: -79.446368)){
                    OpenMapButton()
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())
                
                Text("Rooms")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("Northview Nav")
            .foregroundColor(Color.gray))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .colorScheme(.dark)
        }
    }
}

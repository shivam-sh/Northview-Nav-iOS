//
//  Home.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-25.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI


struct Home: View {
    var body: some View {
         NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(
                    destination: MapView()
                        .environment(\.colorScheme, .dark)
                    ){
                    OpenMapButton()
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())

                Text("Rooms")
                    .font(.title)
                    .fontWeight(.bold)
                Text(roomData[2].name)
                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("Northview Nav")
            .foregroundColor(Color.gray))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

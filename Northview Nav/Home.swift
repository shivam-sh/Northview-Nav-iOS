//
//  Home.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-25.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI


struct Home: View {
    
    @State var isOverlaid: Bool = false
    @State var selectedRoom: Room = roomData[0]
    
    var featured: [Room] {
        roomData.filter { $0.isFeatured}
    }
    
    var body: some View {
         NavigationView {
            ZStack {
                ScrollView {
                    NavigationLink(destination: MapView().environment(\.colorScheme, .dark)){
                        RoundedImage(image: "darkMap", text: "Open Map")
                            .shadow(radius: 10)
                            .padding()
                    }.buttonStyle(PlainButtonStyle())

                    Text("Featured Rooms")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(self.featured) {room in
                        RowView(room: room)
                            .onTapGesture {
                                withAnimation() {
                                    self.isOverlaid.toggle()
                                    self.selectedRoom = room
                                }
                        }
                    }
                }.navigationBarTitle("Northview Nav", displayMode: .automatic)
                
                if isOverlaid {
                    ZStack(alignment: .bottom) {
                        OverlayView()
                            .onTapGesture {
                                withAnimation{ self.isOverlaid.toggle()}
                        }
                        
                        RoomInfo(room: selectedRoom)
                            .padding()
                    }.shadow(radius: 10)
                }
            }
        }
    }
}

struct OverlayView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color.black)
            .opacity(0.4)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//
//  Home.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-25.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @State var showingMap = false
    @State var showingDetail = false
    @State var selectedRoom: Room = roomData[0]
    
    var featured: [Room] {
        roomData.filter { $0.isFeatured}
    }
    
    var body: some View {
         NavigationView {
                ScrollView {
                    NavigationLink(destination: MapView().environment(\.colorScheme, .dark)) {
                        ImageCard(image: "DarkMap", text: "Open Map")
                            .shadow(radius: 10)
                            .padding()
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: AllRooms()) {
                        TextCard(text: "All Rooms", color: ColorFromRGB(rgb: 0x555555))
                            .shadow(radius: 10)
                            .padding(.horizontal)
                    }.buttonStyle(PlainButtonStyle())
                    
                    Text("Featured Rooms")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(featuredRooms) { room in
                        VStack {
                            Button(action: {
                                self.showingDetail.toggle()
                            }) {
                                RowView(room: room)
                                    .onTapGesture {
                                        self.selectedRoom = room
                                        self.showingDetail.toggle()
                                }
                            }.buttonStyle(PlainButtonStyle())
                                .sheet(isPresented: self.$showingDetail) {
                                    RoomInfo(room: self.selectedRoom)
                            }
                            Divider().padding(.horizontal)
                        }
                    }
                }.navigationBarTitle("Northview Nav", displayMode: .automatic)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

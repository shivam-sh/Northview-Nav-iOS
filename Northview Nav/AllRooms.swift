//
//  AllRooms.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2020-02-28.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import SwiftUI
import CoreLocation

struct AllRooms: View {
    @State var isOverlaid: Bool = false
    @State var showingDetail = false

    var body: some View {
        ScrollView () {
            HStack {
                Text("First Floor")
                    .font(.title)
                    .padding([.leading, .trailing])
                Spacer()
            }.padding([.top, .leading, .trailing])
            
            ForEach(firstFloor) { room in
                    Button(action: {
                        //self.showingDetail.toggle()
                    }) {
                    RowView(room: room)
                        .onTapGesture {
                            selectedRoom = room
                            wayfindOnOpen = true
                            wayfindingCoords = CLLocationCoordinate2DMake(selectedRoom.coordinates.latitude, selectedRoom.coordinates.longitude)
                            self.showingDetail.toggle()
                    }.padding(.bottom, 5)
                    }.buttonStyle(PlainButtonStyle())
                    .sheet(isPresented: self.$showingDetail) {
                            RoomInfo(room: selectedRoom)
                }
            }
            
            Divider().padding(.horizontal)
            
            HStack {
                Text("Second Floor")
                    .font(.title)
                    .padding([.leading, .bottom, .trailing])
                Spacer()
            }.padding([.top, .leading, .trailing])
            
            ForEach(secondFloor) { room in
                VStack {
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        RowView(room: room)
                            .onTapGesture {
                                selectedRoom = room
                                self.showingDetail.toggle()
                            }
                        }.buttonStyle(PlainButtonStyle())
                        .sheet(isPresented: self.$showingDetail) {
                            RoomInfo(room: selectedRoom)
                    }
                }
            }
            
            Divider().padding(.horizontal)
            
            HStack {
                Text("Third Floor")
                    .font(.title)
                    .padding([.leading, .bottom, .trailing])
                Spacer()
            }.padding([.top, .leading, .trailing])
            
            ForEach(thirdFloor) { room in
                VStack {
                    Button(action: {
                        self.showingDetail.toggle()
                    }) {
                        RowView(room: room)
                            .onTapGesture {
                                selectedRoom = room
                                self.showingDetail.toggle()
                            }
                        }.buttonStyle(PlainButtonStyle())
                        .sheet(isPresented: self.$showingDetail) {
                            RoomInfo(room: selectedRoom)
                    }
                }
            }
        }.navigationBarTitle("All Rooms", displayMode: .automatic)
    }
}

struct AllRooms_Previews: PreviewProvider {
    static var previews: some View {
        AllRooms()
    }
}

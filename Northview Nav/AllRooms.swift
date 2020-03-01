//
//  AllRooms.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2020-02-28.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct AllRooms: View {
    @State var isOverlaid: Bool = false
    @State var showingDetail = false
    @State var selectedRoom: Room = roomData[0]

    var body: some View {
        ScrollView () {
            HStack {
                Text("First Floor")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding([.leading, .bottom, .trailing])
                Spacer()
            }.padding([.top, .leading, .trailing])
            ForEach(firstFloor) { room in
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
            
            HStack {
                Text("Second Floor")
                    .font(.title)
                    .fontWeight(.semibold)
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
            
            HStack {
                Text("Third Floor")
                    .font(.title)
                    .fontWeight(.semibold)
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
        }.navigationBarTitle("All Rooms", displayMode: .automatic)
    }
}

struct AllRooms_Previews: PreviewProvider {
    static var previews: some View {
        AllRooms()
    }
}

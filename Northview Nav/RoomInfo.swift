//
//  RoomInfo.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-30.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct RoomInfo: View {
    var room: Room
    
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(20)
                .frame(height: 400)
            
            VStack {
                Text(room.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding([.top, .leading, .trailing])
                
                RoundedImage(image: room.image, text: "")
                    .padding(.horizontal)
                
                Text(room.description)
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: Text("Test")) {
                    ZStack {
                        Rectangle()
                            .frame(minHeight: 0, maxHeight: 60)
                            .cornerRadius(20)
                            .foregroundColor(Color.white)
                        Text("Go")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                    }
                }.padding([.leading, .bottom, .trailing])
                    .shadow(radius: 1)
            }.frame(height: 400)
        }
    }
}

struct RoomInfo_Previews: PreviewProvider {
    static var previews: some View {
        RoomInfo(room: roomData[0])
    }
}

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
        NavigationView {
            VStack {
                Image(room.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    
                Text(room.description)
                    .font(.body)
                    .foregroundColor(Color.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom, .trailing])
                    
                Spacer()
                    
                NavigationLink(destination: MapView()) {
                    ZStack {
                        Rectangle()
                            .frame(minHeight: 0, maxHeight: 60)
                            .cornerRadius(20)
                            .foregroundColor(ColorFromRGB(rgb: 0x555555))
                        Text("Go")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                    }
                }.padding([.leading, .bottom, .trailing])
                        .shadow(radius: 1)
            }.navigationBarTitle(room.name)
        }
    }
}

struct RoomInfo_Previews: PreviewProvider {
    static var previews: some View {
        RoomInfo(room: roomData[0])
    }
}

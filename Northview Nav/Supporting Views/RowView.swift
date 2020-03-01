//
//  RowView.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-30.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var room: Room
    
    var body: some View {
        HStack (){
            Image(room.image).renderingMode(.original).resizable().scaledToFit().clipShape(Circle()).shadow(radius: 10)
            VStack(alignment: .leading) {
                Text(room.name)
                    .font(.headline)
                Text(room.description)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }//.padding(.leading, 30)
            Spacer()
        }.frame(height: 55).contentShape(Rectangle())

    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(room: roomData[0])
    }
}

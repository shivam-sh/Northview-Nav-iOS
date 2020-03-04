//
//  floorSelector.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2020-03-03.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct floorSelector: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
                
            VStack {
                Group{
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.white)
                        Text("3")
                    }
                    Divider()
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color.white)
                        Text("2")
                    }
                    Divider()
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(ColorFromRGB(rgb: 0x999999))
                        Text("1")
                    }
                }
                    .font(.headline)
                    .foregroundColor(Color.black)
            }.padding()
            }.frame(minWidth: 20, maxWidth: 60, minHeight: 80, maxHeight: 150)
    }
}

struct floorSelector_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
            floorSelector()
        }
    }
}

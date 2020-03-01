//
//  OpenMapButton.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct ImageCard: View {
    var image: String
    var text: String
    
    var body: some View {
        ZStack (alignment: .bottomLeading){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct TextCard: View {
    var text: String
    var color: Color = ColorFromRGB(rgb: 0x0F32E3)
    var height: CGFloat = 60
    
    var body: some View {
        ZStack (alignment: .bottomLeading){
            Rectangle()
                .cornerRadius(20)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
        }.frame(height: height)
        .foregroundColor(color)
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ImageCard(image: "DarkMap", text: "Open Map")
            TextCard(text: "Hello")
        }
    }
}

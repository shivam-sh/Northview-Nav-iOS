//
//  OpenMapButton.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct RoundedImage: View {
    var image: String
    var text: String
    
    var body: some View {
        ZStack (alignment: .bottomLeading){
            Image(image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(image: "darkmap", text: "Open Map")
    }
}

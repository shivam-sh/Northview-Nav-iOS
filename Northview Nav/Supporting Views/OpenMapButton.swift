//
//  OpenMapButton.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-23.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import SwiftUI

struct OpenMapButton: View {
    var body: some View {
        ZStack (alignment: .bottomLeading){
            Image("darkMap")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            Text("Open Map")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
        }
    }
}

struct OpenMapButton_Previews: PreviewProvider {
    static var previews: some View {
        OpenMapButton()
    }
}

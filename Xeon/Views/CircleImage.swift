//
//  CircleImage.swift
//  Son Soundboard
//
//  Created by Connor Scally on 6/24/21.
//

import SwiftUI
import Resolver
import EyeTrackKit

struct CircleImage: View {
    var body: some View {
        Image("main")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.purple, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

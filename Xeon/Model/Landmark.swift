//
//  Landmark.swift
//  Son-Board
//
//  Created by Connor Scally on 6/25/21.
//

import Foundation
import SwiftUI

struct Library: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

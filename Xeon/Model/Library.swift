//
//  Library.swift
//  Son-Board
//
//  Created by Connor Scally on 6/25/21.
//

import Foundation
import SwiftUI
import Resolver
import EyeTrackKit

struct Library: Hashable, Codable, Identifiable {
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

//
//  LandmarkRow.swift
//  Son-Board
//
//  Created by Connor Scally on 6/25/21.
//

import SwiftUI

struct LibraryRow: View {
    var landmark: Library

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
        }
    }
}

struct LibraryRow_Previews: PreviewProvider {
    static var previews: some View {
        LibraryRow(landmark: landmarks[2])
    }
}

//
//  LibraryList.swift
//  Son-Board
//
//  Created by Connor Scally on 6/25/21.
//

import SwiftUI
import Resolver
import EyeTrackKit

struct LibraryList: View {
    var body: some View {
        NavigationView {
            List(catagories) { library in
                NavigationLink(destination: TestSongView()) {
                    LibraryRow(library: library)
                }
            }
            .navigationTitle("Library")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LibraryList()
    }
}

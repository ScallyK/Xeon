//
//  LibraryRow.swift
//  Son-Board
//
//  Created by Connor Scally on 6/25/21.
//

import SwiftUI
import Resolver
import EyeTrackKit

struct LibraryRow: View {
    var library: Library
    
    var body: some View {
        HStack {
            library.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(library.name)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading, -1.0)
            
            
            Spacer()
        }
    }
}

struct LibraryRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            LibraryRow(library: catagories[0])
            
            LibraryRow(library: catagories[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

//
//  LibraryDetail.swift
//  Xeon
//
//  Created by Connor Scally on 6/26/21.
//


// TODO:

// - Implement fucntion for detecting when the circle is within the co-ordinate threshold of an object.
// - If object and circle intersect, implement a timer or possibly the blink function to interact with the object. Cannot simualte a touch/tap.
// - Display interactivity between circle and object for user reference.

import SwiftUI
import Resolver
import EyeTrackKit
import UIKit
import SceneKit
import ARKit
import Wink

struct LibraryDetail: View {
    
    
    @ObservedObject var eyeTrackController: EyeTrackController = Resolver.resolve()
    @ObservedObject var dataController: DataController = Resolver.resolve()

    init() {
        let data: DataController = Resolver.resolve()
        self.eyeTrackController.onUpdate = { info in
            data.add(info: info!)
        }
    }
    
    
    var body: some View {
        
        
        
        NavigationView {
                    VStack {
                        Text("")
                            .toolbar {
                                
                                NavigationLink(destination: LibraryList()) {
                                    
                                    Text("Library")
                                }
                            }
                
                        CircleImage()
                            .padding(.bottom, -20)
                        
                        self.eyeTrackController.view
                        Circle()
                            .fill(Color.purple.opacity(0.5))
                            .frame(width: 25, height: 25)
                            .position(x: eyeTrackController.eyeTrack.lookAtPoint.x, y: eyeTrackController.eyeTrack.lookAtPoint.y)
                        
                        
                        
                
                VStack (alignment: .leading){
                    Text("Song Title")
                        .fontWeight(.semibold)
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .offset(y:-60)
                    HStack {
                        Text("Album Name")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                            .offset(y:-60)
                        Spacer()
                        Text("Artist")
                            .font(.subheadline)
                            .offset(y:-60)
                    }
                }
                .padding()
                
                
                ButtonHandler()
                    .offset(y: -60)
            
                }
        
        
    }
}

struct LibraryDetail_Previews: PreviewProvider {
    static var previews: some View {
        LibraryDetail()
    }
}
}

//
//  TestSongView.swift
//  Xeon
//
//  Created by Connor Scally on 6/26/21.
//

import SwiftUI
import SwiftySound

func play() {
    
    Sound.play(file: "rick.wav")
    
}

struct TestSongView: View {
    var body: some View {
        
        Button(action: play) {
            Image("rick")
                .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

struct TestSongView_Previews: PreviewProvider {
    static var previews: some View {
        TestSongView()
    }
}

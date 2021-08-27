//
//  ButtonHandler.swift
//  Son Soundboard
//
//  Created by Connor Scally on 6/24/21.
//

import SwiftUI
import SwiftySound
import Resolver
import EyeTrackKit



struct ButtonHandler: View {
    
    @ObservedObject var eyeTrackController: EyeTrackController = Resolver.resolve()
    @ObservedObject var dataController: DataController = Resolver.resolve()
    
    init() {
        let data: DataController = Resolver.resolve()
        self.eyeTrackController.onUpdate = { info in
            data.add(info: info!)
        }
        
        var hasBlinked = (eyeTrackController.eyeTrack.face.leftEye.blink)
    }
    
    
    @State var isPlaying : Bool = false
    
    
    func skip() {
        
        Sound.play(file: "mow.wav")
        
        
    }
    
    func previous() {
        
        Sound.play(file: "mow.wav")
        
    }
    
    func pause() {
        
        Sound.play(file: "mow.wav")
        
    }
    
    
    
    var body: some View {
        
        
        Button(action: skip) {
            Image("skip")
            
                .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
            
            
        }
        .padding(.leading, 300.0/*@END_MENU_TOKEN@*/)
        .padding(/*@START_MENU_TOKEN@*/.top, 120.0/*@END_MENU_TOKEN@*/)
        .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
        
        
        
        
        Button(action: previous) {
            Image("previous")
                .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                
            
            
        }
        .padding(.trailing, 300.0/*@END_MENU_TOKEN@*/)
        .frame(width: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(self.isPlaying == true ? "play" : "pause")
            
        }
        
    }
    
}

struct ButtonHandler_Previews: PreviewProvider {
    static var previews: some View {
        ButtonHandler()
    }
}


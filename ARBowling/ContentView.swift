//
//  ContentView.swift
//  ARBowling
//
//  Created by Eli Hartnett on 6/11/23.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    
    private let arView = ARGameView()
    
    var body: some View {
        
        ZStack {
            ARViewContainer(arView: arView).ignoresSafeArea()
            
            ControlsView { direction in
                arView.startApplyingForce(direction: direction)
            } stopApplyingForce: {
                arView.stopApplyingForce()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

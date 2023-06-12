//
//  ARViewContainer.swift
//  ARBowling
//
//  Created by Eli Hartnett on 6/11/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer: UIViewRepresentable {
    
    let arView: ARGameView
    
    func makeUIView(context: Context) -> ARGameView {
        let bowlingSceneAnchor = try! MyScene.loadBowlingScene()
        arView.scene.anchors.append(bowlingSceneAnchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARGameView, context: Context) {}
}

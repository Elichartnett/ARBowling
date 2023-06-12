//
//  ControlsView.swift
//  ARBowling
//
//  Created by Eli Hartnett on 6/11/23.
//

import SwiftUI

struct ControlsView: View {
    
    var startApplyingForce: (ForceDirection) -> ()
    var stopApplyingForce: () -> ()
    
    var body: some View {
        
        VStack {
            arrowButton(direction: .up)
            
            HStack {
                arrowButton(direction: .left)
                
                Spacer()
                
                arrowButton(direction: .right)
            }
            
            arrowButton(direction: .down)
        }
    }
    
    func arrowButton(direction: ForceDirection) -> some View {
        Image(systemName: direction.symbol)
            .resizable()
            .frame(width: 75, height: 75)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged({ value in
                        startApplyingForce(direction)
                    })
                    .onEnded({ value in
                        stopApplyingForce()
                    })
            )
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView(startApplyingForce: { direction in
            print("\(direction) started")
        }, stopApplyingForce: {
            print("stopped")
        })
    }
}


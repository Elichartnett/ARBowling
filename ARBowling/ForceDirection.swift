//
//  ForceDirection.swift
//  ARBowling
//
//  Created by Eli Hartnett on 6/11/23.
//

import Foundation

enum ForceDirection: CaseIterable {
    case up
    case down
    case left
    case right
    
    var symbol: String {
        switch self {
        case .up:
            return "arrow.up.circle.fill"
        case .down:
            return "arrow.down.circle.fill"
        case .left:
            return "arrow.left.circle.fill"
        case .right:
            return "arrow.right.circle.fill"
        }
    }
}

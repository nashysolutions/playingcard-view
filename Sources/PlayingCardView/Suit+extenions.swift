//
//  Suit+extensions.swift
//  
//
//  Created by Robert Nash on 06/08/2022.
//

import SwiftUI
import PlayingCards

extension Suit {
    
    var symbolImageName: String {
        switch self {
        case .spades:
            return "suit.spade.fill"
        case .hearts:
            return "suit.heart.fill"
        case .diamonds:
            return "suit.diamond.fill"
        case .clubs:
            return "suit.club.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .hearts, .diamonds:
            return .red
        case .clubs, .spades:
            return .black
        }
    }
}

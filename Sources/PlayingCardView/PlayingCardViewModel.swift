//
//  PlayingCardViewModel.swift
//  
//
//  Created by Robert Nash on 06/08/2022.
//

import SwiftUI
import PlayingCards

public struct PlayingCardViewModel {

    public let card: PlayingCard
    
    public var isFaceUp: Bool
    
    public init(card: PlayingCard, isFaceUp: Bool) {
        self.card = card
        self.isFaceUp = isFaceUp
    }
    
    public mutating func flip() {
        isFaceUp.toggle()
    }
    
    func illustrationFont(for frame: CGRect) -> Font {
        let scale = frame.width * 0.003
        return .system(size: 120 * scale)
    }
    
    func cornerRadius(for frame: CGRect) -> CGFloat {
        frame.width * 0.05
    }
    
    func borderWidth(for frame: CGRect) -> CGFloat {
        frame.width * 0.01
    }
}

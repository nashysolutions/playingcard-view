//
//  CornerRankViewModel.swift
//  
//
//  Created by Robert Nash on 07/08/2022.
//

import SwiftUI
import PlayingCards

struct CornerRankViewModel {
    
    private let card: PlayingCard
    
    init(card: PlayingCard) {
        self.card = card
    }
        
    var rankChar: String {
        card.rank.char
    }
    
    var foregroundColor: Color {
        card.suit.color
    }
    
    var suitSymbolImageName: String {
        card.suit.symbolImageName
    }
    
    func suitSymbolOffset(for frame: CGRect) -> CGFloat {
        let scale = frame.width * 0.0025
        let value = 5 * scale
        return -value
    }
    
    func rankCharFont(for frame: CGRect) -> Font {
        let scale = frame.width * 0.0035
        return .system(size: 55 * scale)
    }
    
    func suitSymbolFont(for frame: CGRect) -> Font {
        let scale = frame.width * 0.0035
        return .system(size: 40 * scale)
    }
    
    func cornerSymbolPadding(for frame: CGRect) -> CGFloat {
        let scale = frame.width * 0.005
        return 10 * scale
    }
}

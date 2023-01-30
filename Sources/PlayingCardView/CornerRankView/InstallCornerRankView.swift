//
//  InstallCornerRankView.swift
//  
//
//  Created by Robert Nash on 03/08/2022.
//

import SwiftUI
import PlayingCards

struct InstallCornerRankView: ViewModifier {
    
    var card: PlayingCard
    var alignment: Alignment
    
    private var isFlipped: Bool {
        alignment == .bottomTrailing
    }
    
    func body(content: Content) -> some View {
        ZStack(alignment: alignment) {
            content
            CornerRankView(model: .init(card: card))
                .rotationEffect(.degrees(isFlipped ? 180 : 0))
        }
    }
}

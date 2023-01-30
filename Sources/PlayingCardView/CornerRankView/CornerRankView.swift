//
//  CornerRankView.swift
//  
//
//  Created by Robert Nash on 03/08/2022.
//

import SwiftUI
import PlayingCards

struct CornerRankView: View {
    
    var model: CornerRankViewModel
    
    var body: some View {
        GeometryReader { proxy in
            let frame = proxy.frame(in: .global)
            VStack(spacing: 0) {
                Text(model.rankChar)
                    .font(model.rankCharFont(for: frame))
                Image(systemName: model.suitSymbolImageName)
                    .font(model.suitSymbolFont(for: frame))
                    .offset(y: model.suitSymbolOffset(for: frame))
            }
            .padding(model.cornerSymbolPadding(for: frame))
        }
        .foregroundColor(model.foregroundColor)
    }
}

struct CornerRankView_Previews: PreviewProvider {
    
    static var previews: some View {
        CornerRankView(model: .init(card: PlayingCard(rank: .ace, suit: .hearts)))
            .previewLayout(.sizeThatFits)
    }
}

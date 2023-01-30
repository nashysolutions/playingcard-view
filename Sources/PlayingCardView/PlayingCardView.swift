//
//  PlayingCardView.swift
//  
//
//  Created by Robert Nash on 03/08/2022.
//

import SwiftUI
import PlayingCards

public struct PlayingCardView: View {
    
    public static let aspectRatio = 3/4.5
    
    var model: PlayingCardViewModel
    
    public init(model: PlayingCardViewModel) {
        self.model = model
    }
    
    public var body: some View {
        GeometryReader { proxy in
            let frame = proxy.frame(in: .global)
            let font = model.illustrationFont(for: frame)
            let radius = model.cornerRadius(for: frame)
            let lineWidth = model.borderWidth(for: frame)
            let borderColor = Color.black
            let frontColor = Color.white
            let backColor = Color.purple
            Color.clear
                .modifier(FaceContent(
                    card: model.card,
                    cornerRadius: radius,
                    lineWidth: lineWidth,
                    borderColor: borderColor,
                    frontFillColor: frontColor,
                    backFillColor: backColor,
                    illustrationFont: font,
                    isFaceUp: model.isFaceUp)
                )
        }
    }
}

struct CardView_Previews: PreviewProvider {
    
    private static let model = PlayingCardViewModel(
        card: PlayingCard(rank: .ten, suit: .hearts),
        isFaceUp: false
    )
    
    static var previews: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            PlayingCardView(model: model)
                .padding()
        }
    }
}

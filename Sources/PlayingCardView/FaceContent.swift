//
//  FaceContent.swift
//  
//
//  Created by Robert Nash on 06/08/2022.
//

import SwiftUI
import PlayingCards

struct FaceContent: AnimatableModifier {
    
    var card: PlayingCard
    var cornerRadius: CGFloat
    var lineWidth: CGFloat
    var borderColor: Color
    var frontFillColor: Color
    var backFillColor: Color
    var rotation: Double // degrees
    var illustrationFont: Font
    
    init(
        card: PlayingCard,
        cornerRadius: CGFloat,
        lineWidth: CGFloat,
        borderColor: Color,
        frontFillColor: Color,
        backFillColor: Color,
        illustrationFont: Font,
        isFaceUp: Bool
    ) {
        self.card = card
        self.cornerRadius = cornerRadius
        self.lineWidth = lineWidth
        self.borderColor = borderColor
        self.frontFillColor = frontFillColor
        self.backFillColor = backFillColor
        self.illustrationFont = illustrationFont
        self.rotation = isFaceUp ? 0 : 180
    }
    
    private let aspectRatio: CGFloat = PlayingCardView.aspectRatio
    
    var animatableData: Double {
        get {
            rotation
        }
        set {
            rotation = newValue
        }
    }
    
    fileprivate func makeCardContainerView(fillColor: Color) -> some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(fillColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .inset(by: lineWidth / 2.0)
                    .stroke(borderColor, lineWidth: lineWidth)
            )
    }
    
    func body(content: Content) -> some View {
        ZStack {
            Group {
                if rotation < 90 {
                    makeCardContainerView(fillColor: frontFillColor)
                        .modifier(FrontFaceContent(card: card, illustrationFont: illustrationFont))
                } else {
                    makeCardContainerView(fillColor: backFillColor)
                        .modifier(BackFaceContent(card: card))
                }
            }
        }
        .aspectRatio(aspectRatio, contentMode: .fit)
        .rotation3DEffect(.degrees(rotation), axis: (0, 1, 0))
    }
}

private struct FrontFaceContent: ViewModifier {
    
    var card: PlayingCard
    var illustrationFont: Font
    
    func body(content: Content) -> some View {
        content
            .modifier(InstallCornerRankView(card: card, alignment: .topLeading))
            .modifier(InstallCornerRankView(card: card, alignment: .bottomTrailing))
        card.rank
            .illustration
            .font(illustrationFont)
            .foregroundColor(card.suit.color)
    }
}

private struct BackFaceContent: ViewModifier {
    
    var card: PlayingCard
    
    func body(content: Content) -> some View {
        ZStack {
            content
            Text("🤠")
                .font(.system(size: 100))
        }
    }
}

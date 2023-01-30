//
//  Rank+extension.swift
//  
//
//  Created by Robert Nash on 06/08/2022.
//

import SwiftUI
import PlayingCards

extension Rank {
    
    var illustration: Image {
        Image(systemName: symbolName)
    }
    
    var symbolName: String {
        switch self {
        case .ace:
            return "cloud.drizzle"
        case .two:
            return "moon.stars"
        case .three:
            return "cloud.snow"
        case .four:
            return "cloud.heavyrain"
        case .five:
            return "cloud.bolt"
        case .six:
            return "cloud.fog"
        case .seven:
            return "cloud.sun"
        case .eight:
            return "cloud.bolt.rain"
        case .nine:
            return "cloud.moon"
        case .ten:
            return "wind.snow"
        case .jack:
            return "tornado"
        case .queen:
            return "snowflake"
        case .king:
            return "cloud.sun.rain"
        }
    }
    
    var char: String {
        switch self {
        case .ace:
            return "A"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .ten:
            return "10"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        }
    }
}

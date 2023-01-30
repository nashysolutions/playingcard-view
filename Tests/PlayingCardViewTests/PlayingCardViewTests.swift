import XCTest
import PlayingCards

@testable import PlayingCardView

final class PlayingCardViewTests: XCTestCase {
    
    func testSymbolName() {
        for rank in Rank.allCases {
            switch rank {
            case .ace: XCTAssertEqual(rank.symbolName, "cloud.drizzle")
            case .two: XCTAssertEqual(rank.symbolName, "moon.stars")
            case .three: XCTAssertEqual(rank.symbolName, "cloud.snow")
            case .four: XCTAssertEqual(rank.symbolName, "cloud.heavyrain")
            case .five: XCTAssertEqual(rank.symbolName, "cloud.bolt")
            case .six: XCTAssertEqual(rank.symbolName, "cloud.fog")
            case .seven: XCTAssertEqual(rank.symbolName, "cloud.sun")
            case .eight: XCTAssertEqual(rank.symbolName, "cloud.bolt.rain")
            case .nine: XCTAssertEqual(rank.symbolName, "cloud.moon")
            case .ten: XCTAssertEqual(rank.symbolName, "wind.snow")
            case .jack: XCTAssertEqual(rank.symbolName, "tornado")
            case .queen: XCTAssertEqual(rank.symbolName, "snowflake")
            case .king: XCTAssertEqual(rank.symbolName, "cloud.sun.rain")
            }
        }
    }
    
    func testChar() {
        for rank in Rank.allCases {
            switch rank {
            case .ace: XCTAssertEqual(rank.char, "A")
            case .two: XCTAssertEqual(rank.char, "2")
            case .three: XCTAssertEqual(rank.char, "3")
            case .four: XCTAssertEqual(rank.char, "4")
            case .five: XCTAssertEqual(rank.char, "5")
            case .six: XCTAssertEqual(rank.char, "6")
            case .seven: XCTAssertEqual(rank.char, "7")
            case .eight: XCTAssertEqual(rank.char, "8")
            case .nine: XCTAssertEqual(rank.char, "9")
            case .ten: XCTAssertEqual(rank.char, "10")
            case .jack: XCTAssertEqual(rank.char, "J")
            case .queen: XCTAssertEqual(rank.char, "Q")
            case .king: XCTAssertEqual(rank.char, "K")
            }
        }
    }
}

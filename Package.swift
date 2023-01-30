// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "playingcard-view",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "PlayingCardView",
            targets: ["PlayingCardView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nashysolutions/PlayingCards.git", .upToNextMinor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "PlayingCardView",
            dependencies: ["PlayingCards"]),
        .testTarget(
            name: "PlayingCardViewTests",
            dependencies: ["PlayingCardView", "PlayingCards"]),
    ]
)

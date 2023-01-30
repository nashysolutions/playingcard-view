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
        .package(url: "https://github.com/nashysolutions/playing-cards.git", .upToNextMinor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "PlayingCardView",
            dependencies: [
                .product(name: "PlayingCards", package: "playing-cards")]
        ),
        .testTarget(
            name: "PlayingCardViewTests",
            dependencies: [
                "PlayingCardView",
                    .product(name: "PlayingCards", package: "playing-cards")
            ]
        ),
    ]
)

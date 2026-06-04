// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "DateRavinKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "DateRavinKit",
            targets: ["DateRavinKit"]
        ),
    ],
    targets: [
        .target(
            name: "DateRavinKit",
            path: "Sources/DateRavinKit"
        ),
        .testTarget(
            name: "DateRavinKitTests",
            dependencies: ["DateRavinKit"],
            path: "Tests/DateRavinKitTests"
        ),
    ],
    swiftLanguageModes: [.v6]
)

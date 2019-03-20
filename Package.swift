// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Refined",
    products: [
        .library(
            name: "Refined",
            targets: ["Refined"]),
    ],
    dependencies: [
        .package(url: "https://github.com/refined-swift/Wrapper.git", .branch("master")),
        .package(url: "https://github.com/refined-swift/Features.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Refined",
            dependencies: ["Wrapper", "Features"]),
        .testTarget(
            name: "RefinedTests",
            dependencies: ["Refined"]),
    ]
)

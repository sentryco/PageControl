// swift-tools-version:6.0
import PackageDescription

let package = Package( // We can't use spm 5.9 yet, because github actions only support 5.7.1 at the moment
    name: "PageControl",
    platforms: [
        .macOS(.v15), // macOS 14 and later
        .iOS(.v18) // iOS 17 and later
    ],
    products: [
        .library(
            name: "PageControl",
            targets: ["PageControl"])
    ],
    targets: [
        .target(
            name: "PageControl"),
        .testTarget(
            name: "PageControlTests",
            dependencies: ["PageControl"])
    ]
)

// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PageControl",
    platforms: [
        .macOS(.v14), // macOS 14 and later
    ],
    products: [
        .library(
            name: "PageControl",
            targets: ["PageControl"]),
    ],
    targets: [
        .target(
            name: "PageControl"),
        .testTarget(
            name: "PageControlTests",
            dependencies: ["PageControl"]),
    ]
)

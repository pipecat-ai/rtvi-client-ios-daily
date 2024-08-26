// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RTVIClientIOSDaily",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RTVIClientIOSDaily",
            targets: ["RTVIClientIOSDaily"]),
    ],
    dependencies: [
        // Local dependency
        //.package(path: "../rtvi-client-ios"),
        .package(url: "https://github.com/rtvi-ai/rtvi-client-ios.git", from: "0.1.5"),
        .package(url: "https://github.com/daily-co/daily-client-ios.git", from: "0.23.0")
    ],
    targets: [
        .target(
            name: "RTVIClientIOSDaily",
            dependencies: [
                .product(name: "RTVIClientIOS", package: "rtvi-client-ios"),
                .product(name: "Daily", package: "daily-client-ios")
            ]),
        .testTarget(
            name: "RTVIClientIOSDailyTests",
            dependencies: ["RTVIClientIOSDaily"]),
    ]
)

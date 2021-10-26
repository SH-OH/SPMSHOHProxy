// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMSHOHProxy",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "SPMSHOHProxy",
            targets: ["SPMSHOHProxy"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SPMSHOHProxy",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "SPMSHOHProxyTests",
            dependencies: [
                .target(name: "SPMSHOHProxy")
            ]
        )
    ]
)

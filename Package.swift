// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMSHOHProxy",
    platforms: [
        .iOS(.v10), .macOS(.v11)
    ],
    products: [
        .library(
            name: "SPMSHOHProxy",
            type: .dynamic,
            targets: ["SPMSHOHProxy"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ReactorKit/ReactorKit.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
        .target(
            name: "SPMSHOHProxy",
            dependencies: [
                "ReactorKit",
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                "RxDataSources",
                .product(name: "RxMoya", package: "Moya"),
                "Kingfisher"
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

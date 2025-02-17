// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OMSDK_Tappx",
    platforms: [.iOS(.v12), .tvOS(.v12)],
    products: [
        .library(
            name: "OMSDK_Tappx",
            targets: ["OMSDK_TappxTarget"]),
    ],
    targets: [
        .target(
            name: "OMSDK_TappxTarget",
            dependencies: [
                .target(name: "OMSDK_Tappx_Binary"),
            ],
            path: "OMSDK_TappxTarget",
            exclude: [
                "OMSDK_Tappx.xcframework/ios-arm64_x86_64-simulator/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/tvos-arm64_x86_64-simulator/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/tvos-arm64/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy"
            ]
        ),
        .binaryTarget(name: "OMSDK_Tappx_Binary", path: "OMSDK_TappxTarget/OMSDK_Tappx.xcframework"),
    ]
)

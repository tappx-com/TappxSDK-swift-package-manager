// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TappxSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TappxSDK",
            targets: ["TappxSDKTarget"]),
    ],
    targets: [
        .target(
            name: "TappxSDKTarget",
            dependencies: [
                .target(name: "TappxFramework"),
                .target(name: "OMSDK_Tappx")
            ],
            path: "TappxSDKTarget",
            exclude: [
                "TappxFramework.xcframework/ios-arm64_x86_64-simulator/TappxFramework.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/ios-arm64_x86_64-simulator/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/ios-arm64/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/tvos-arm64_x86_64-simulator/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy",
                "OMSDK_Tappx.xcframework/tvos-arm64/OMSDK_Tappx.framework/PrivacyInfo.xcprivacy"
            ]
        ),
        .binaryTarget(name: "TappxFramework", path: "TappxSDKTarget/TappxFramework.xcframework"),
        .binaryTarget(name: "OMSDK_Tappx", path: "TappxSDKTarget/OMSDK_Tappx.xcframework"),
    ]
)

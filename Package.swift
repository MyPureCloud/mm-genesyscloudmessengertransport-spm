// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let package = Package(
    name: "GenesysCloudMessengerTransport",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GenesysCloudMessengerTransport",
            targets: ["GenesysCloudMessengerTransport"]),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudMessengerTransport",
            url: "https://github.com/MyPureCloud/genesys-messenger-transport-mobile-sdk/releases/download/v3.0.0/MessengerTransport.xcframework.zip",
            checksum: "126ec1a9580805e4b2d5bb59b0d62392248ab25fa5f7624221c19e808d8dc661"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudMessengerTransport"
        ])
    ]
)

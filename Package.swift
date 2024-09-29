// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IndiePitcherLambdaSwiftExample",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/IndiePitcher/indiepitcher-swift.git", from: "1.0.0"),
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "1.0.0-alpha")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "IndiePitcherLambdaSwiftExample", 
            dependencies: [
                .product(name: "IndiePitcherSwift", package: "indiepitcher-swift"),
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")
            ]
        ),
    ]
)

// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "API",
    products: [
        .library(name: "API", targets: ["API"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "API", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)

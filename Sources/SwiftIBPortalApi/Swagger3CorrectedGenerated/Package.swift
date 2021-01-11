// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "IBPortalApi",
    products: [
        .library(name: "IBPortalApi", targets: ["IBPortalApi"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "IBPortalApi", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)

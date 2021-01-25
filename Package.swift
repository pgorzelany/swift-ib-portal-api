// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftIBPortalApi",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftIBPortalApi",
            targets: ["SwiftIBPortalApi"]),
        .executable(
            name: "SwiftIBPortalApiExample",
            targets: ["SwiftIBPortalApiExample"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftIBPortalApi",
            dependencies: ["Alamofire"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-enable-experimental-concurrency"])]
        ),
        .testTarget(
            name: "SwiftIBPortalApiTests",
            dependencies: ["SwiftIBPortalApi"]),
        .target(
            name: "SwiftIBPortalApiExample",
            dependencies: ["SwiftIBPortalApi"],
            swiftSettings: [.unsafeFlags(["-Xfrontend", "-enable-experimental-concurrency"])]
        )
    ]
)

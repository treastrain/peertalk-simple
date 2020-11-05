// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "peertalk-simple",
    products: [
        .library(
            name: "peertalk-simple",
            targets: ["peertalk-simple"]),
    ],
    dependencies: [
        .package(name: "Peertalk", url: "https://github.com/tonyarnold/peertalk", .branch("feature/swift-package-manager")),
    ],
    targets: [
        .target(
            name: "peertalk-simple",
            dependencies: ["Peertalk"],
            path: "Source"),
    ]
)

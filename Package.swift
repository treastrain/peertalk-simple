// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PeerTalkSimple",
    products: [
        .library(
            name: "PeerTalkSimple",
            targets: ["PeerTalkSimple"]),
    ],
    dependencies: [
        .package(name: "Peertalk", url: "https://github.com/tonyarnold/peertalk", .branch("feature/swift-package-manager")),
    ],
    targets: [
        .target(
            name: "PeerTalkSimple",
            dependencies: ["Peertalk"],
            path: "Source"),
    ]
)

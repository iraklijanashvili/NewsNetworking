// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NewsNetworking",
    products: [
        .library(
            name: "NewsNetworking",
            targets: ["NewsNetworking"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NewsNetworking",
            dependencies: [],
            path: "Sources/NewsNetworking"),
    ]
)

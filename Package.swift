// swift-tools-version:5.0
import PackageDescription
let package = Package(
    name: "Runtime",
    products: [
        .library(
            name: "Runtime",
            type: .dynamic,
            targets: ["Runtime"])
        ],
        .library(
            name: "CRuntime",
            type: .dynamic,
            targets: ["CRuntime"])
        ],
    targets: [
        .target(
            name: "Runtime",
            dependencies: ["CRuntime"]),
        .target(
            name: "CRuntime",
            dependencies: []),
        .testTarget(
            name: "RuntimeTests",
            dependencies: ["Runtime"])
    ],
    swiftLanguageVersions: [.v5]
)

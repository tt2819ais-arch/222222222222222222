// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Gothbreach",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Gothbreach", targets: ["Gothbreach"]),
    ],
    targets: [
        .target(
            name: "Gothbreach",
            path: ".",
            sources: ["ContentView.swift", "GothbreachApp.swift"]
        )
    ]
)

// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeetCode",
    products: [
        .library(
            name: "LeetCode",
            targets: ["LeetCode"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LeetCode",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "Dynamic Programming",
            dependencies: ["LeetCode"]),
    ]
)

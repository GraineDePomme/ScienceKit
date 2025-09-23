// swift-tools-version: 6.1

import PackageDescription

let package = Package(

    name: "ScienceKit",

    products: [
        .library(
            name: "ScienceKit",
            targets: ["ScienceKit"]),
    ],

    targets: [

        .target(
            name: "ScienceKit",
            dependencies: ["Calculus"]),

        .target(
            name: "Calculus"
        ),

        .testTarget(
            name: "ScienceKitTests",
            dependencies: ["ScienceKit"]
        ),

        .testTarget(
            name: "CalculusTests",
            dependencies: ["ScienceKit"]
        )
    ]
)

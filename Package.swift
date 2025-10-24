// swift-tools-version: 6.1

import PackageDescription

let package = Package(

    name: "ScienceKit",

    products: [
        .library(name: "ScienceKit", targets: ["ScienceKit"]),
    ],

    targets: [

        .target(name: "ScienceKit", dependencies: [], path: "Sources/ScienceKit"),

        .testTarget(
            name: "ScienceKitTests",
            dependencies: ["ScienceKit"]
        ),
    ]
)

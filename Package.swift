// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AjourLegacyDependencies",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "AjourLegacyDependencies",
            targets: ["JSONModel", "ISO8601", "FMDB"]
        ),
    ],
    targets: [
        .target(
            name: "JSONModel",
            path: "Sources/JSONModel",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Sources/JSONModel"),
                .headerSearchPath("Sources/JSONModel/include")
            ]
        ),
        .target(
            name: "ISO8601",
            path: "Sources/ISO8601",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Sources/ISO8601"),
                .headerSearchPath("Sources/ISO8601/include")
            ]
        ),
        .target(
            name: "FMDB",
            path: "Sources/FMDB",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Sources/FMDB"),
                .headerSearchPath("Sources/FMDB/include")
            ]
        )
    ]
)

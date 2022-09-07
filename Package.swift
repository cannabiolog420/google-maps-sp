// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/cannabiolog420/google-maps-sp/releases/download/7.0.0/GoogleMaps.xcframework.zip",
            checksum: "9cc0dcb4fd964249da60411c339e29f0ae1dee8cd8a33714f555ddbef2c405af"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/cannabiolog420/google-maps-sp/releases/download/7.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "341a559f83880531bbd4909d97d2c6ade11ed82758745ceeabb346c9cf000cb9"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/cannabiolog420/google-maps-sp/releases/download/7.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "0d33e44faa80b7d6104ceacdcc3cc94715ee7e28778489797f2cef3fe67451f7"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/cannabiolog420/google-maps-sp/releases/download/7.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "4c10de3b5d0da86c58e62bcfbb9d3f439c8ae60196e161984eb05896107db5a3"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/cannabiolog420/google-maps-sp/releases/download/7.0.0/GooglePlaces.xcframework.zip",
            checksum: "d2cdd1833ddaf2cf17e87f80e39fc30c6e9a0f7885fa6514566a22665142c545"
        )
    ]
)

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
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/6.2.1-universal/GoogleMaps.xcframework.zip",
            checksum: "94b529f0320ac59e14009bf578b7855d3c437ce6de0e2619502afd3c50301620"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/6.2.1-universal/GoogleMapsBase.xcframework.zip",
            checksum: "a3cec21a5d2e5d38d5ff0a2dc5b901113f330f36f0d19320489ccabbb318b47e"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/6.2.1-universal/GoogleMapsCore.xcframework.zip",
            checksum: "58758af0e1b2085a49bd307e03b84313924ed460c63f4d5fe04d8a366393be34"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/6.2.1-universal/GoogleMapsM4B.xcframework.zip",
            checksum: "67c474ce836d2b0bbc33af396566ab09fa60ff4d50672d0f07f606b5f7bfbd8b"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/6.2.1-universal/GooglePlaces.xcframework.zip",
            checksum: "71ca0c78e26b647a3d3b883ed9891152b71373b2aa71f62b7897de56497684f3"
        )
    ]
)

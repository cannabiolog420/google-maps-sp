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
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/7.0.0-universal/GoogleMaps.xcframework.zip",
            checksum: "05b5f7cef5c3c2f204e021304f1507520f50aa0851582a13ee0b7deeea2c819f"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/7.0.0-universal/GoogleMapsBase.xcframework.zip",
            checksum: "7c8c931a21f433b78a249b189cb877544acc586ef3e25da04642c535dfba31eb"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/7.0.0-universal/GoogleMapsCore.xcframework.zip",
            checksum: "14a9b5c44865945a20094f4082565727d4822dc8fb418067fc55dbef0ac25ed2"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/7.0.0-universal/GoogleMapsM4B.xcframework.zip",
            checksum: "275627d38f8a26f1554d6fc68b800f4449f7d23b6fbeab0c7beed611094c7c9b"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/MichiganLabs/GoogleMaps-SP/releases/download/7.0.0-universal/GooglePlaces.xcframework.zip",
            checksum: "3ceef0d4c3297caea93d2f7ed062cfe5e57e50678f86192ab5f21bb3dc2c5838"
        )
    ]
)

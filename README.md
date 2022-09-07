# Google Maps Swift Package

## Requirements
* [iOS 13.0](https://wikipedia.org/wiki/IOS_13) or later.
* [Xcode 13.0](https://developer.apple.com/xcode) or later.

## Installation
- Add the following dependency to your project's `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/cannabiolog420/google-maps-sp.git", .upToNextMinor(from: "7.0.0"))
]
```

## Building

### Updating

- Update the `Cartfile` versions to the desired one, e.g.: `7.0.0-beta`.
> Note: In order for this project to generate xcframeworks that work with the same level of perfection on all devices including Apple Silicon simulators, use beta-versions. Prebuilt binaries that are intended for those simulators are hidden inside of Google's beta-version xcframeworks.

### Steps to create SPM package

On the project root directory run the following command:
```bash ./make_xcframework.sh -x```

This will create a directory named `Build` that contains zipped `XCFramework`s.

> The `checksum` file found inside the `Build` directory contains the SHA-256 checksum of the generated `XCFramework` zip files.

### Known Issues
- If you use a Google Maps Swift package in an app with extensions, the build system incorrectly embeds the binary dependencies alongside the extension in the PlugIns directory, causing validation of the archived app to fail. (69834549) (FB8761306)

    **Workaround:** Add a scheme post-build action which removes the embedded binaries from the PlugIns directory after the build, e.g. `rm -rf "${TARGET_BUILD_DIR}/${TARGET_NAME}.app"/PlugIns/*.framework`.

## Sponsor
If you find this package useful please consider **[STARRING 🌟](https://github.com/YAtechnologies/GoogleMaps-SP/stargazers)** this repository.

## License
The **Google Maps iOS SDK** and **Google Places iOS SDK** libraries are the property of Google and are subject to *Google's Terms of Service*. See [LICENSE.google](https://github.com/YAtechnologies/GoogleMaps-SP/blob/main/LICENSE.google) for details.

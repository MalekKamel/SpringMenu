SpringMenu
================

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/logo2.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>
<h1 align="center">SpringMenu</h1>
<p align="center">The most awesome SwiftUI menu with spring animation</p>

<p align="center">
<a href="https://twitter.com/intent/tweet?text=SpringMenu,%20The%20most%20awesome%20SwiftUI%20menu%20with%20spring%20animation.%20Clean,%20simple,%20and%20customizable&url=https://github.com/ShabanKamell/SpringMenu&hashtags=swiftui,ios,macos,tvos,developers"><img src="https://img.shields.io/twitter/url/http/shields.io.svg?style=social" height="20"/></a>
</p>

<p align="center">
	<a href="https://travis-ci.com/ShabanKamell/SpringMenu"> <img src="https://travis-ci.com/ShabanKamell/SpringMenu.svg?branch=master" height="20"/></a>
	<a href=""><img src="https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg" height="20"/></a>
	<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" height="20"/></a>
	<a href="https://github.com/ShabanKamell/SpringMenu/blob/master/LICENSE"><img src="https://img.shields.io/badge/price-FREE-0098f7.svg" height="20"/></a>
</p><br/><br/>

# Table of contents

- [Usage](#usage)
    - [Basic Setup](#basic-setup)
- [Installation](#installation)
    - [CocoaPods](#cocoapods)
    - [Swift Package Manager](#swift-package-manager)
    - [Accio](#accio)
    - [Carthage](#carthage)
- [Contribution](#contribution)
- [Changelog](#changelog)
- [License](#license)

## :zap: Usage

## :tada: Installation

### CocoaPods

Use the following entry in your Podfile:

```rb
pod 'SpringMenu'
```

Then run `pod install`.

### Swift Package Manager

Add the following as a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/ShabanKamell/SpringMenu.git")
```

and then specify `"SpringMenu"` as a dependency of the Target in which you wish to use SpringMenu.
Here's an example `PackageDescription`:

```swift
// swift-tools-version:5.1

import PackageDescription

let package = Package(
        name: "MyPackage",
        products: [
            .library(
                    name: "MyPackage",
                    targets: ["MyPackage"]),
        ],
        dependencies: [
            .package(url: "https://github.com/ShabanKamell/SpringMenu")
        ],
        targets: [
            .target(
                    name: "MyPackage",
                    dependencies: ["SpringMenu"])
        ]
)
```

### Accio

[Accio](https://github.com/JamitLabs/Accio) is a dependency manager based on SwiftPM which can build frameworks for
iOS/macOS/tvOS/watchOS. Therefore the integration steps of SpringMenu are exactly the same as described above.
Once your `Package.swift` file is configured, run `accio update` instead of `swift package update`.

Don't forget to add `import SpringMenu` to use the framework.

### Carthage

Carthage users can point to this repository and use generated `SpringMenu` framework.

Make the following entry in your Cartfile:

```rb
github "ShabanKamell/SpringMenu"
```

Then run `carthage update`.

If this is your first time using Carthage in the project, you'll need to go through some additional steps as
explained [over at Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

## Contribution

All Pull Requests (PRs) are welcome. Help us make this library better.

## Changelog
Look at [Changelog](https://github.com/ShabanKamell/SwiftUIFormValidator/blob/master/CHANGELOG.md) for release notes.

## License

<details>
    <summary>
        click to reveal License
    </summary>

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

</details>

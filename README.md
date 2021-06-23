SpringMenu
================

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/logo2.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>
<h1 align="center">SpringMenu</h1>
<p align="center">The most awesome SwiftUI menu with spring animation</p>

<p align="center">
<a href="https://twitter.com/intent/tweet?text=SpringMenu,%20The%20most%20awesome%20SwiftUI%20menu%20with%20spring%20animation.%20Clean,%20simple,%20and%20customizable&url=https://github.com/ShabanKamell/SpringMenu&hashtags=swiftui,ios,macos,tvos,developers"><img src="https://img.shields.io/twitter/url/http/shields.io.svg?style=social" height="20"/></a>
</p>

<p align="center">
	<a href=""><img src="https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg" height="20"/></a>
	<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" height="20"/></a>
	<a href="https://github.com/ShabanKamell/SpringMenu/blob/master/LICENSE"><img src="https://img.shields.io/badge/price-FREE-0098f7.svg" height="20"/></a>
</p>

<br/><br/>

# Table of contents

- [Usage](#usage)
    - [Design](#design)
    - [Basic Setup](#basic-setup)
- [Items](#items)
    - [2 Items](#2-items)
    - [3 Items](#3-items)
    - [4 Items](#4-items)
    - [5 Items](#5-items)
    - [6 Items](#6-items)
    - [7 Items](#7-items)
    - [8 Items](#8-items)
- [Installation](#installation)
    - [CocoaPods](#cocoapods)
    - [Swift Package Manager](#swift-package-manager)
    - [Accio](#accio)
    - [Carthage](#carthage)
- [Contribution](#contribution)
- [Changelog](#changelog)
- [License](#license)

## :zap: Usage

## Design

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/structure.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/structure.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### Basic Setup

```swift
// 1- Define items
let items = TwoSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.black)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.black)
                .foregroundColor(.white)
                .build()
)

// 2- Define settings
let settings = SpringMenuSettings.Builder()
        .icon(.plus,
                backgroundColor: .init(collapsed: .black, expanded: .white),
                foreGroundColor: .init(collapsed: .white, expanded: .black))
        .items(items: items, position: .top)
        .backgroundColor(.white)
        .build()

// 3- The Menu :)
SpringMenu(isExpanded: $isExpanded, settings: settings)
        .frame(height: 300)
```

## Items

**SpringMenu** supports from 2 to 8 items. Some numbers require position or gravity to display correctly. In the
following lines, we'll explain how to use the items.

### 2 Items

```swift

TwoSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.black)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.black)
                .foregroundColor(.white)
                .build()
)

```

#### Position

```swift
enum Position {
    case top
    case bottom
    case vertical
    case horizontal
}
```

##### Top

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-top.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-top.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Bottom

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-bottom.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-bottom.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Vertical

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-vertical.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-vertical.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Horizontal

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-horizontal.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/2-horizontal.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 3 Items

```swift

ThreeSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.blue)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.blue)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.blue)
                .foregroundColor(.white)
                .build()
)

```

#### Position

```swift
enum Position {
    case top
    case bottom
    case leading
    case trailing
}
```

##### Top

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-top.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-top.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Bottom

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-bottom.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-bottom.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Leading

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-leading.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-leading.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Trailing

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-trailing.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/3-trailing.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 4 Items

```swift

FourSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.orange)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.orange)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.orange)
                .foregroundColor(.white)
                .build(),
        item4: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.orange)
                .foregroundColor(.white)
                .build()
)

```

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/4.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/4.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 5 Items

```swift

FiveSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.green)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.green)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.green)
                .foregroundColor(.white)
                .build(),
        item4: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.green)
                .foregroundColor(.white)
                .build(),
        item5: SpringItem.Builder()
                .icon(Image(systemName: "pencil.circle"))
                .backgroundColor(.green)
                .foregroundColor(.white)
                .build()
)

```

#### Gravity

```swift
enum Gravity {
    case top
    case bottom
    case leading
    case trailing
}
```

##### Top

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-top.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-top.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Bottom

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-bottom.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-bottom.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Leading

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-leading.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-leading.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Trailing

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-trailing.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/5-trailing.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 6 Items

```swift

SixSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build(),
        item4: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build(),
        item5: SpringItem.Builder()
                .icon(Image(systemName: "pencil.circle"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build(),
        item6: SpringItem.Builder()
                .icon(Image(systemName: "folder"))
                .backgroundColor(.pink)
                .foregroundColor(.white)
                .build()
)

```

#### Position

```swift
enum Position {
    case vertical
    case horizontal
}
```

##### Vertical

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/6-vertical.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/6-vertical.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Horizontal

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/6-horizontal.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/6-horizontal.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 7 Items

```swift

SevenSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item4: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item5: SpringItem.Builder()
                .icon(Image(systemName: "pencil.circle"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item6: SpringItem.Builder()
                .icon(Image(systemName: "folder"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build(),
        item7: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.purple)
                .foregroundColor(.white)
                .build()
)

```

#### Gravity

```swift
enum Gravity {
    case top
    case bottom
    case leading
    case trailing
}
```

##### Top

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-top.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-top.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Bottom

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-bottom.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-bottom.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Leading

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-leading.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-leading.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

##### Trailing

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-trailing.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/7-trailing.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

### 8 Items

```swift

EightSpringItems(
        item1: SpringItem.Builder()
                .icon(Image(systemName: "photo"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item2: SpringItem.Builder()
                .icon(Image(systemName: "note.text"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item3: SpringItem.Builder()
                .icon(Image(systemName: "doc"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item4: SpringItem.Builder()
                .icon(Image(systemName: "mic.fill"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item5: SpringItem.Builder()
                .icon(Image(systemName: "pencil.circle"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item6: SpringItem.Builder()
                .icon(Image(systemName: "folder"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item7: SpringItem.Builder()
                .icon(Image(systemName: "square.and.arrow.up"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build(),
        item8: SpringItem.Builder()
                .icon(Image(systemName: "arrowshape.turn.up.forward"))
                .backgroundColor(.red)
                .foregroundColor(.white)
                .build()
)

```

<p align="center"><a href="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/8.jpeg"><img src="https://github.com/ShabanKamell/SpringMenu/blob/master/blob/items/8.jpeg?raw=true" alt="Gray shape shifter" height="200"/></a></p>

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

and then specify `"SpringMenu"` as a dependency of the Target in which you wish to use SpringMenu. Here's an
example `PackageDescription`:

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
iOS/macOS/tvOS/watchOS. Therefore the integration steps of SpringMenu are exactly the same as described above. Once
your `Package.swift` file is configured, run `accio update` instead of `swift package update`.

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

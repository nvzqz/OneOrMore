# OneOrMore

[![Swift 3.0](https://img.shields.io/badge/swift-3.0-orange.svg)](https://developer.apple.com/swift/)
![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20macos%20%7C%20watchos%20%7C%20tvos%20%7C%20linux-lightgrey.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/OneOrMore.svg)](https://cocoapods.org/pods/OneOrMore)
[![Carthage](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-orange.svg)](https://swift.org/package-manager/)

A Swift collection of one or more elements.

A `OneOrMore` instance must have one or more elements. This makes it great for
tasks such as implementing an undo history. Chris Eidhof outlines a great
example [here](http://chris.eidhof.nl/post/undo-history-in-swift/).

- [Installation](#installation)
    - [Compatibility](#compatibility)
    - [Swift Package Manager](#install-using-swift-package-manager)
    - [CocoaPods](#install-using-cocoapods)
    - [Carthage](#install-using-carthage)
    - [Manually](#install-manually)
- [Usage](#usage)
- [License](#license)

## Installation

### Compatibility

- Platforms:
    - macOS 10.9+
    - iOS 8.0+
    - watchOS 2.0+
    - tvOS 9.0+
    - Linux
- Xcode 8.0
- Swift 3.0

### Install Using Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a
decentralized dependency manager for Swift.

1. Add the project to your `Package.swift`.

    ```swift
    import PackageDescription

    let package = Package(
        name: "MyAwesomeProject",
        dependencies: [
            .Package(url: "https://github.com/nvzqz/OneOrMore.git",
                     majorVersion: 1)
        ]
    )
    ```

2. Import the OneOrMore module.

    ```swift
    import OneOrMore
    ```

### Install Using CocoaPods
[CocoaPods](https://cocoapods.org/) is a centralized dependency manager for
Objective-C and Swift. Go [here](https://guides.cocoapods.org/using/index.html)
to learn more.

1. Add the project to your [Podfile](https://guides.cocoapods.org/using/the-podfile.html).

    ```ruby
    use_frameworks!

    pod 'OneOrMore', '~> 1.0.0'
    ```

    If you want to be on the bleeding edge, replace the last line with:

    ```ruby
    pod 'OneOrMore', :git => 'https://github.com/nvzqz/OneOrMore.git'
    ```

2. Run `pod install` and open the `.xcworkspace` file to launch Xcode.

3. Import the OneOrMore framework.

    ```swift
    import OneOrMore
    ```

### Install Using Carthage
[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency
manager for Objective-C and Swift.

1. Add the project to your [Cartfile](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#cartfile).

    ```
    github "nvzqz/OneOrMore"
    ```

2. Run `carthage update` and follow [the additional steps](https://github.com/Carthage/Carthage#getting-started)
   in order to add OneOrMore to your project.

3. Import the OneOrMore framework.

    ```swift
    import OneOrMore
    ```

### Install Manually

Simply add the `OneOrMore.swift` file into your project.

## Usage

```swift
let numbers = OneOrMore(1, 2, 3)
```

Because a `OneOrMore` instance is guaranteed to have one or more elements,
properties such as `first` and `last` return a non-optional value.

`OneOrMore` has overloaded `map(_:)`, `sorted(by:)`, and `reversed()` methods
that return `OneOrMore`.

```swift
let multiplesOfTwo = numbers.map { $0 * 2 }  // OneOrMore<Int> [2, 4, 6]

let reversed = values.reversed()  // OneOrMore<Int> [6, 4, 2]

let sorted = reversed.sorted(by: <)  // OneOrMore<Int> [2, 4, 6]
```

## License

OneOrMore is published under the [MIT License](https://opensource.org/licenses/MIT).

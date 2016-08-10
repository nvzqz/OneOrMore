# OneOrMore

[![Swift 2.2 | 3.0](https://img.shields.io/badge/swift-2.2%20%7C%203.0-orange.svg)](https://developer.apple.com/swift/)
![Platforms](https://img.shields.io/badge/platform-ios%20%7C%20macos%20%7C%20watchos%20%7C%20tvos%20%7C%20linux-lightgrey.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/OneOrMore.svg)](https://cocoapods.org/pods/OneOrMore)
[![Carthage](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-orange.svg)](https://swift.org/package-manager/)

A Swift collection of one or more elements.

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

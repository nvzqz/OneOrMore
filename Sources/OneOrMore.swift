//
//  OneOrMore.swift
//  OneOrMore
//
//  The MIT License (MIT)
//
//  Copyright (c) 2016 Nikolai Vazquez
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

/// A collection of one or more `Element`.
public struct OneOrMore<Element>: CustomStringConvertible {

    /// The first element.
    public var first: Element

    /// The rest of the elements.
    public var rest: [Element]

    /// The last element.
    public var last: Element {
        return rest.last ?? first
    }

    /// The position of the first element.
    public var startIndex: Int {
        return 0
    }

    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    public var endIndex: Int {
        return rest.endIndex + 1
    }

    /// A textual representation of this instance.
    public var description: String {
        let elements = lazy.map(String.init(reflecting:))
        #if swift(>=3)
            let joined = elements.joined(separator: ", ")
        #else
            let joined = elements.joinWithSeparator(", ")
        #endif
        return "[\(joined)]"
    }

    /// Creates an instance with `first` and `rest`.
    public init(first: Element, rest: [Element]) {
        self.first = first
        self.rest = rest
    }

    /// Creates an instance with only `first`.
    public init(_ first: Element) {
        self.init(first: first, rest: [])
    }

    /// Creates an instance with `first` and `rest`.
    public init(_ first: Element, _ rest: Element...) {
        self.init(first: first, rest: rest)
    }

    /// Accesses the element at the specified position.
    public subscript(position: Int) -> Element {
        @inline(__always)
        get {
            if position == 0 {
                return first
            } else {
                return rest[position - 1]
            }
        }
        @inline(__always)
        set {
            if position == 0 {
                first = newValue
            } else {
                rest[position - 1] = newValue
            }
        }
    }

}

#if swift(>=3)

extension OneOrMore: MutableCollection {

    /// Returns the index after `i`.
    public func index(after i: Int) -> Int {
        return i + 1
    }

}

#else

extension OneOrMore: MutableCollectionType {

    
}

#endif

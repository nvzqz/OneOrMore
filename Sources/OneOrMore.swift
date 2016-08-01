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
public struct OneOrMore<Element> {

    /// The first element.
    public var first: Element

    /// The rest of the elements.
    public var rest: [Element]

    /// The last element.
    public var last: Element {
        return rest.last ?? first
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

}

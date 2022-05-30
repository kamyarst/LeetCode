//
//  FibonacciNumberTests.swift
//  LeetCodeTests
//
//  Created by adanic on 5/30/22.
//

import XCTest

class FibonacciNumberTests: XCTestCase {

    func test_leetCodeExample1() {
        let n = 2
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, 1)
    }

    func test_leetCodeExample2() {
        let n = 3
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, 2)
    }

    func test_leetCodeExample3() {
        let n = 4
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, 3)
    }

    func test_minimumInputSuccess() {
        let n = 0
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, 0)
    }

    func test_maximumInputSuccess() {
        let n = 30
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, 832_040)
    }

    func test_minimumInputFailure() {
        let n = -1
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, -1)
    }

    func test_maximumInputFailure() {
        let n = 31
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertEqual(result, -1)
    }

    // MARK: - Helpers

    private func makeSUT() -> FibonacciNumber {
        FibonacciNumber()
    }
}

struct FibonacciNumber {
    func fib(_ n: Int) -> Int {
        guard ![0, 1].contains(n) else { return n }
        guard n > 1, n <= 30 else { return -1 }
        return self.fib(n - 1) + self.fib(n - 2)
    }
}

//
//  FibonacciNumberTests.swift
//  LeetCodeTests
//
//  Created by adanic on 5/30/22.
//

import XCTest

class FibonacciNumberTests: XCTestCase {
    func test_minimumInputFailure() {
        let n = -1
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertNil(result)
    }

    func test_maximumInputFailure() {
        let n = 31
        let sut = self.makeSUT()

        let result = sut.fib(n)

        XCTAssertNil(result)
    }

    // MARK: - Helpers

    private func makeSUT() -> FibonacciNumber {
        FibonacciNumber()
    }
}

struct FibonacciNumber {
    func fib(_ n: Int) -> Int? {
        guard n >= 0, n <= 30 else { return nil }
        return 0
    }
}

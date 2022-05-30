//
//  FibonacciNumberTests.swift
//  LeetCodeTests
//
//  Created by adanic on 5/30/22.
//

@testable import LeetCode
import XCTest

class FibonacciNumberTests: XCTestCase {

    func test_leetCodeExample1() {
        let n = 2
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 1 })
    }

    func test_leetCodeExample2() {
        let n = 3
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 2 })
    }

    func test_leetCodeExample3() {
        let n = 4
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 3 })
    }

    func test_minimumInputSuccess() {
        let n = 0
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 0 })
    }

    func test_maximumInputSuccess() {
        let n = 30
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 832_040 })
    }

    func test_minimumInputFailure() {
        let n = -1
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    func test_maximumInputFailure() {
        let n = 31
        let sut = self.makeSUT()

        let result = sut.map { $0.fib(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    // MARK: - Helpers

    private func makeSUT() -> [FibonacciNumberProtocol] {
        [FibonacciNumber.Recursive(), FibonacciNumber.Dynamic()]
    }
}

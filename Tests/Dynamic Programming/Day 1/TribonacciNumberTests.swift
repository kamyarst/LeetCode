//
//  TribonacciNumberTests.swift
//  LeetCodeTests
//
//  Created by Kamyar Sehati on 6/6/22.
//

@testable import LeetCode
import XCTest

class TribonacciNumberTests: XCTestCase {

    func test_leetCodeExample1() {
        let n = 4
        let sut = self.makeSUT()

        let result = sut.map { $0.tribonacci(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 4 })
    }

    func test_leetCodeExample2() {
        let n = 25
        let sut = self.makeSUT()

        let result = sut.map { $0.tribonacci(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 1_389_537 })
    }

    func test_minimumInputSuccess() {
        let n = 0
        let sut = self.makeSUT()

        let result = sut.map { $0.tribonacci(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 0 })
    }

    func test_minimumInputFailure() {
        let n = -1
        let sut = self.makeSUT()

        let result = sut.map { $0.tribonacci(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    func test_maximumInputFailure() {
        let n = 38
        let sut = self.makeSUT()

        let result = sut.map { $0.tribonacci(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    // MARK: - Helpers

    private func makeSUT() -> [TribonacciNumberProtocol] {
        [TribonacciNumber.Recursive(), TribonacciNumber.DynamicTopDown()]
    }
}

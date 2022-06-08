//
//  ClimbingStairsTests.swift
//  LeetCodeTests
//
//  Created by Kamyar Sehati on 6/8/22.
//

@testable import LeetCode
import XCTest

class ClimbingStairsTests: XCTestCase {

    func test_leetCodeExample1() {
        let n = 2
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 2 })
    }

    func test_leetCodeExample2() {
        let n = 3
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 3 })
    }

    func test_leetCodeExample3() {
        let n = 4
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 5 })
    }

    func test_minimumInputSuccess() {
        let n = 2
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 2 })
    }

    func test_maximumInputSuccess() {
        let n = 40
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == 165_580_141 })
    }

    func test_minimumInputFailure() {
        let n = 0
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    func test_maximumInputFailure() {
        let n = 46
        let sut = self.makeSUT()

        let result = sut.map { $0.climbStairs(n) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    // MARK: - Helpers

    private func makeSUT() -> [ClimbingStairsProtocol] {
        [ClimbStairs.Dynamic()]
    }
}

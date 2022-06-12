//
//  MinCostClimbingStairsTests.swift
//  LeetCodeTests
//
//  Created by Kamyar on 6/12/22.
//

@testable import LeetCode
import XCTest

class MinCostClimbingStairsTests: XCTestCase {

    func test_leetCodeExample1() {
        let cost = [10, 15, 20]
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 == 15 })
    }

    func test_leetCodeExample2() {
        let cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 == 6 })
    }

    func test_minSuccess() {
        let cost = [2]
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 == 2 })
    }

    func test_minFailure() {
        let cost = [Int]()
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    func test_maxSuccess() {
        let cost = Array(repeating: 999, count: 1000)
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 != -1 })
    }

    func test_maxFailure() {
        let cost = Array(repeating: 1000, count: 1001)
        let sut = self.makeSUT()

        let result = sut.map { $0.minCostClimbingStairs(cost) }

        XCTAssertTrue(result.allSatisfy { $0 == -1 })
    }

    // MARK: - Helpers

    private func makeSUT() -> [MinCostClimbingStairsProtocol] {
        [MinCostClimbingStairs.MainApproach(), MinCostClimbingStairs.SpaceOptimized()]
    }
}

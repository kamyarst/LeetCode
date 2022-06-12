//
//  MinCostClimbingStairs.swift
//  LeetCode
//
//  Created by Kamyar Sehati on 6/12/22.
//

import Foundation

protocol MinCostClimbingStairsProtocol {
    /**
     You are given an integer array cost where cost[i] is the cost of ith step on a staircase.
     Once you pay the cost, you can either climb one or two steps.

     You can either start from the step with index 0, or the step with index 1.
     **/
    func minCostClimbingStairs(_ cost: [Int]) -> Int
}

enum MinCostClimbingStairs {

    struct MainApproach: MinCostClimbingStairsProtocol {

        func minCostClimbingStairs(_ cost: [Int]) -> Int {
            let count = cost.count

            guard count <= 1000,
                  count > 0,
                  cost.allSatisfy({ $0 >= 0 && $0 <= 999 })
            else { return -1 }

            if count == 1 { return cost[0] }

            var path = [cost[0],
                        cost[1]]

            var index = 2

            while index < cost.count {

                let minCost = min(path[index - 1],
                                  path[index - 2]) + cost[index]
                path.append(minCost)
                index += 1
            }

            return min(path[count - 2], path[count - 1])
        }
    }

    struct SpaceOptimized: MinCostClimbingStairsProtocol {

        func minCostClimbingStairs(_ cost: [Int]) -> Int {

            let count = cost.count

            guard count <= 1000,
                  count > 0,
                  cost.allSatisfy({ $0 >= 0 && $0 <= 999 })
            else { return -1 }

            if count == 1 { return cost[0] }

            var path1 = 0
            var path2 = 0

            var index = 0

            while index < cost.count {

                let minCost = min(path1, path2) + cost[index]
                path2 = path1
                path1 = minCost
                index += 1
            }

            return min(path1, path2)
        }
    }
}

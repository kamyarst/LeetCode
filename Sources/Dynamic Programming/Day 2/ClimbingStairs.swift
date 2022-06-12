//
//  ClimbingStairs.swift
//  LeetCode
//
//  Created by Kamyar Sehati on 6/8/22.
//

import Foundation

protocol ClimbingStairsProtocol {
    /**
     You are climbing a staircase. It takes n steps to reach the top.
     Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
     */
    func climbStairs(_ n: Int) -> Int
}

enum ClimbStairs {

    // Similar to Fibonacci
    struct Dynamic: ClimbingStairsProtocol {

        func climbStairs(_ n: Int) -> Int {
            guard ![1, 2].contains(n) else { return n }
            guard n >= 1, n <= 45 else { return -1 }

            var previous = 1
            var result = 1
            var temp = 0

            var counter = 2
            while counter <= n {

                temp = previous + result
                previous = result
                result = temp
                counter += 1
            }

            return result
        }
    }
}

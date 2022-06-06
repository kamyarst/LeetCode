//
//  TribonacciNumber.swift
//  LeetCodeTests
//
//  Created by Kamyar Sehati on 6/6/22.
//

import Foundation

protocol TribonacciNumberProtocol {
    func tribonacci(_ n: Int) -> Int
}

enum TribonacciNumber {

    struct Recursive: TribonacciNumberProtocol {

        func tribonacci(_ n: Int) -> Int {
            guard n >= 0, n <= 37 else { return -1 }
            if n == 0 {
                return 0
            } else if [1, 2].contains(n) {
                return 1
            } else {
                return self.tribonacci(n - 3) + self.tribonacci(n - 2) + self.tribonacci(n - 1)
            }
        }
    }

    class DynamicTopDown: TribonacciNumberProtocol {

        var results: [Int: Int] = [:]

        func tribonacci(_ n: Int) -> Int {
            guard n >= 0, n <= 37 else { return -1 }
            self.results[0] = 0
            self.results[1] = 1
            self.results[2] = 1
            var counter = 3
            while counter <= n {
                self.results[counter] = self.results[counter - 1]! +
                    self.results[counter - 2]! +
                    self.results[counter - 3]!
                counter += 1
            }
            return self.results[n] ?? -1
        }
    }
}

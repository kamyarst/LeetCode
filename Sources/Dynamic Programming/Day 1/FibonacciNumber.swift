//
//  FibonacciNumber.swift
//  LeetCode
//
//  Created by Kamyar Sehati on 5/30/22.
//

import Foundation

protocol FibonacciNumberProtocol {
    /**
     The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
     F(0) = 0, F(1) = 1
     F(n) = F(n - 1) + F(n - 2), for n > 1.
     Given n, calculate F(n).
     */
    func fib(_ n: Int) -> Int
}

enum FibonacciNumber {

    struct Recursive: FibonacciNumberProtocol {

        func fib(_ n: Int) -> Int {
            guard ![0, 1].contains(n) else { return n }
            guard n > 1, n <= 30 else { return -1 }
            return self.fib(n - 1) + self.fib(n - 2)
        }
    }

    struct Dynamic: FibonacciNumberProtocol {

        func fib(_ n: Int) -> Int {
            guard ![0, 1].contains(n) else { return n }
            guard n > 1, n <= 30 else { return -1 }

            var previous = 0
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

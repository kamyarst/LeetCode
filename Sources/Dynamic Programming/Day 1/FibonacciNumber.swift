//
//  FibonacciNumber.swift
//  LeetCode
//
//  Created by Kamyar Sehati on 5/30/22.
//

import Foundation

protocol FibonacciNumberProtocol {
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

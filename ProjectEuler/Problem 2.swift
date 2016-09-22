//
//  Problem 2.swift
//  ProjectEuler
//
//  Created by Andrew Barber on 9/21/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import Foundation
import Darwin



extension Int {
    func isMultipleOf(factor: Int) -> Bool {
        return self % factor == 0
    }
    func largestPossibleFactor() -> Int  {

        let squareRoot: Double = sqrt(Double(self))
        return Int(ceil(squareRoot))

    }

}

func findLargestPrimeFactor(fromNumber: Int) -> Int {
    for factor in 2..<fromNumber.largestPossibleFactor() {
        if fromNumber.isMultipleOf(factor: factor) {
            return findLargestPrimeFactor(fromNumber: fromNumber/factor)
        }
    }
    return fromNumber
}

let target: Int = 600_851_475_143
let answer: Int = findLargestPrimeFactor(fromNumber: target)


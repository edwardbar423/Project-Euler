//
//  Problem 6.swift
//  ProjectEuler
//
//  Created by Andrew Barber on 9/21/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import Foundation



func squareOfSums(numbers :[Int]) -> Int {


    var sum = 0
    var squareOfSums = 0

    for number in numbers {
        sum = sum + number
        squareOfSums = sum * sum
    }
    print(sum)
    return squareOfSums
}

let myParty = Array(0...100)
let test = Array(0...10)

let fooUError = squareOfSums(numbers: myParty)
let goAwayErrorExpressionsAreNotAllowedAtTheTopLevel = squareOfSums(numbers:test)



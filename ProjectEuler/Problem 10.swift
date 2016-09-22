//
//  Problem 10.swift
//  ProjectEuler
//
//  Created by Andrew Barber on 9/21/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import Foundation


func primes(upperBound: Int) -> [Int] {

    var possibilities = Array(2..<upperBound)
    var listOfPrimes: [Int] = []
    
    while let thisPrime = possibilities.first {
        listOfPrimes.append(thisPrime)
        
        var newPossibilities: [Int] = []
        for possible in possibilities where possible % thisPrime != 0 {
            newPossibilities.append(possible)
        }
        possibilities = newPossibilities
    }
    
    return listOfPrimes
    
}

var hahaha = primes(upperBound: 2_000_000)


func sumOfPrimes(yolo: [Int]) -> Int {
    
    var wow = 0
    
    for count in yolo {
        wow = wow + count
    }
    return wow
}

let fooYouError = sumOfPrimes(yolo: hahaha)

//
//  File.swift
//  ProjectEuler
//
//  Created by Andrew Barber on 9/21/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

import Foundation


func multiples (upperBound : Int) -> Int {

    var listOfMultiples : [Int] = []
    let potentials = Array(3..<upperBound)
    var sum = 0

    for number in potentials {
        if(number % 3 == 0 || number % 5 == 0) {

            listOfMultiples.append(number)

           sum = sum + number

        }

    }
    return sum

}
multiples(upperBound: 1000)

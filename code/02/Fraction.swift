//
//  Fraction.swift
//  prog2.1
//
//  Created by Lech Szymanski on 2/06/15.
//  Copyright (c) 2015 Lech Szymanski. All rights reserved.
//

import Foundation

/**
Represents a number as a fraction of two integers

*/
final class Fraction : CustomStringConvertible, StringConvertibleNum {
    
    /**
    Converts string to a Fraction object.  Supports string
    syntax of the following format:
    "a" - converts it to fraction a/1
    "a/b" - converts it to fraction a/b
    
    - parameter string: String to convert
    - returns: Fraction? Fraction read from string, nil if
    syntax error in the string
    */
    static func readFromString(_ string: String) -> Fraction? {
        // Default values for numerator
        // and denomintor
        var num: Int = 0;
        var den: Int = 1;
        
        // Break the string into tokens separated by / symbol
        var tokens = string.components(separatedBy: "/")
        
        // If there is at least one token, then there is
        // a numerator value
        if tokens.count > 0 {
            // Try to convert numerator string to integer -
            // if not successful, return nil
            if let n = Int(tokens[0]) {
                num = n
            } else {
                return nil
            }
        }
        
        // If there is a second token, then there is
        // a denominator value
        if tokens.count > 1 {
            // Try to convert denominator string to integer -
            // if not successful, return nil
            if let d = Int(tokens[1]) {
                den = d
            } else {
                return nil
            }
        }
        // Return new fraction initialising its
        // numerator and denominator to values
        // read from the string
        return Fraction(num: num, den: den)
    }
}

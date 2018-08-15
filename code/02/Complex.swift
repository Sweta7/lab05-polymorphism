//
//  Complex.swift
//  prog5.2
//
//  Created by Lech Szymanski on 7/20/15.
//  Copyright (c) 2015 Lech Szymanski. All rights reserved.
//

import Foundation

/**
Represents a complex number

*/
final class Complex : CustomStringConvertible, StringConvertibleNum {
    
    /**
    Converts string to a Complex object.  Supports string
    syntax of the following format:
    "a" - converts it to complex number a+0i
    "ai" - converts it to complex number 0+ai
    
    - parameter string: String to convert
    - returns: Complex? Complex object read from string, nil if
    syntax error in the string
    */
    static func readFromString(_ string: String) -> Complex? {
        // Break the string into tokens separated by i symbol
        var tokens = string.components(separatedBy: "i")
        
        // If there is at least one token, then there is
        // a numerator value
        if tokens.count > 0 {
            // The token is the number without the i, so can convert it
            // to a float value
            let numToken = tokens[0]
            let numFromStr : Float? = (numToken as NSString).floatValue;
            
            // If the conversion of the number to float worked...
            if let num = numFromStr {
                // Check if the token is the same as argument string...
                if numToken == string {
                    // If yes, then it means there was no i in the string...
                    return Complex(real: num, imag: 0.0)
                } else {
                    // If the passed in string had "i" at the end, the
                    // separate by string would have removed the i, so the
                    // token is not the same as the argument string.
                    // The number then is imaginary
                    return Complex(real: 0.0, imag: num);
                }
            }
        }
        return nil
    }
}

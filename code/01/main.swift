//
//  main.swift
//  prog5.1
//
//  Created by Lech Szymanski on 20/07/15.
//  Tweaked / checked for Swift 3.1 by Dave Eyers in July 2017.
//  Copyright (c) 2015 Lech Szymanski. All rights reserved.
//

import Foundation

let str1: String = "Item V";
let str2: String = "Item E";
let str3: String = "Item S";
let str4: String = "Item M";

var list: LinkedList<String> = LinkedList<String>()
print("\(list)")

list.add(object: str1)
list.add(object: str2)
list.add(object: str3)
list.add(object: str4)
print("\(list)")

var queue: Queue<String> = Queue<String>(list: list)
print("\n\(queue)")

let item1 = queue.get()
print("Got item: \(item1)")
print("\(queue)")

print("Putting item: \(str2)")
queue.put(object: str2)
print("\(queue)")

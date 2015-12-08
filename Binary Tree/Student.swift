//
//  Student.swift
//  Binary Tree
//
//  Created by Ergin Bilgin on 08/12/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

class Student : Comparable, CustomStringConvertible {
    let name : String
    var description: String {
        return self.name
    }
    
    init(name : String) {
        self.name = name
    }
}

func < (lhs: Student, rhs: Student) -> Bool {
    return lhs.name < rhs.name
}

func == (lhs: Student, rhs: Student) -> Bool {
    return lhs.name == rhs.name
}


//
//  main.swift
//  Binary Tree
//
//  Created by Ergin Bilgin on 22/11/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

print("Hello, World!")

var tree = MyTree<Int>()

tree.addNode(5)
tree.addNode(6)
tree.addNode(3)
tree.addNode(2)
tree.addNode(7)
tree.addNode(4)
print(tree.value)
print("Print")
tree.printTree()
print("Remove 5")
//tree.removeNode(4)
tree.printTree()

var tre = MyTree<Int>()
print("Test Tree")
tre.addNode(4)
tre.addNode(2)
tre.addNode(1)
tre.addNode(-3)
tre.addNode(6)
tre.addNode(7)
tre.addNode(11)
tre.printTree()
tre.removeNode(2)
print("Removed 6")
tre.printTree()

var tre2 = MyTree<Int>()
print("TEST TREE 2")
tre2.addNode(4)
tre2.addNode(2)
tre2.addNode(1)
tre2.addNode(3)
tre2.addNode(6)
tre2.addNode(5)
tre2.addNode(7)
tre2.printTree()
print("REMOVE")
tre2.removeNode(7)
tre2.printTree()


var studentTree = MyTree<Student>()

print("STUDENT TREE")
studentTree.addNode(Student(name: "Ergin"))
studentTree.addNode(Student(name: "John"))
studentTree.addNode(Student(name: "Alison"))
studentTree.addNode(Student(name: "Mark"))
studentTree.addNode(Student(name: "Carla"))
studentTree.printTree()


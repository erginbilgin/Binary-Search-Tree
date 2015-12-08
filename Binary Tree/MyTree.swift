//
//  MyTree.swift
//  Binary Tree
//
//  Created by Ergin Bilgin on 22/11/15.
//  Copyright © 2015 Ergin Bilgin. All rights reserved.
//

import Foundation

/* An AVL Tree is a kind of self-balancing binary search tree */

public class MyTree<T: Comparable> {
    
    var value: T?
    var left: MyTree?
    var right: MyTree?
    var parent: MyTree? = nil
    
    
    init() {

    }
    
    func addNode(value: T){
        if (self.value == nil){
            self.value = value
            return
        }
        if (value < self.value){
            if (self.left != nil){
                left!.addNode(value)
            } else {
                let leftChild : MyTree = MyTree()
                leftChild.value = value
                leftChild.parent = self
                self.left = leftChild
            }
        }
        if (value > self.value){
            if (self.right != nil){
                right!.addNode(value)
            } else {
                let rightChild : MyTree = MyTree()
                rightChild.value = value
                rightChild.parent = self
                self.right = rightChild
            }
        }
    }
    func remove(){
        // TODO: IMPLEMENT THIS
        //self.value = 99 as! T
        if (self.left == nil && self.right == nil){ // NO CHILDREN
            if (parent == nil){
                self.value = nil
            } else if (parent!.value > value){
                parent!.left = nil
            } else if (parent!.value < value){
                parent!.right = nil
            }
        } else if (self.left == nil && self.right != nil) || (self.left != nil && self.right == nil){
            if (self.left != nil){
                self.left!.parent = self.parent
                if (parent == nil){
                    self.value = self.left?.value
                    self.left = self.left?.left
                    self.right = self.left?.right
                } else if (parent!.value > value){
                    parent!.left = self.left
                } else if (parent!.value < value){
                    parent!.right = self.left
                }
            } else if (self.right != nil){
                self.right!.parent = self.parent
                if (parent == nil){
                    self.value = self.right?.value
                    self.left = self.right?.left
                    self.right = self.right?.right
                } else if (parent!.value > value){
                    parent!.left = self.right
                } else if (parent!.value < value){
                    parent!.right = self.right
                }
            }
        } else if (self.left != nil) && (self.right != nil){
            let tempValue = findMinRight().value
            removeNode(tempValue!)
            self.value = tempValue
        }
    }
    
    func removeNode(value: T){
        if (self.value == value){   // If root should be deleted
            self.remove()
        } else if ( self.right == nil && self.left == nil){
            print("Node couldn't be found!")
        } else if (self.value > value){
            self.left!.removeNode(value)
        } else if (self.value < value){
            self.right!.removeNode(value)
        }
    }
    
    func findMinRight() -> MyTree{
        var min = self.right
        while (min!.left != nil){
            min = min!.left
        }
        return min!
    }
    
    func printTree(){
        if (value != nil){
            self.left?.printTree()
            print(self.value)
            self.right?.printTree()
        }
    }
}
//
//  BinarySearchTreeQuestion.swift
//  AlgorithmPlayground
//
//  Created by Ridvan Ozguvenir on 12/01/2018.
//  Copyright © 2018 Ridvan Ozguvenir. All rights reserved.
//

import Foundation

class BinarySearchTreeQuestion {
    
    var lastVisitedNode: NodeBST? = nil
    
    var tree = NodeBST(15, leftChild: NodeBST(9, leftChild: NodeBST(2, leftChild: nil, rightChild: nil), rightChild: NodeBST(1, leftChild: nil, rightChild: nil)), rightChild: NodeBST(4, leftChild: nil, rightChild: nil))
    
    init() {
        print("Result: ", isBinarySearchTree(tree) ? "It is BST." : "It is not BST.")
    }
    
    func isBinarySearchTree(_ node: NodeBST?) -> Bool {
        if node != nil {
            if (node?.leftChild != nil && !isBinarySearchTree(node?.leftChild)) || (lastVisitedNode != nil && (node!.value <= lastVisitedNode!.value)) {
                return false
            }
            lastVisitedNode = node
            
            return isBinarySearchTree(node?.rightChild)
        }
        return true
    }
}


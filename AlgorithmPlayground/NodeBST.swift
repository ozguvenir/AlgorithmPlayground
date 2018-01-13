//
//  NodeBST.swift
//  AlgorithmPlayground
//
//  Created by Ridvan Ozguvenir on 13/01/2018.
//  Copyright © 2018 Ridvan Ozguvenir. All rights reserved.
//

import Foundation

class NodeBST {
    var value: Int!
    var leftChild: NodeBST?
    var rightChild: NodeBST?
    
    init() {
        self.value = 0
    }
    
    init(_ value: Int?, leftChild: NodeBST?, rightChild: NodeBST?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

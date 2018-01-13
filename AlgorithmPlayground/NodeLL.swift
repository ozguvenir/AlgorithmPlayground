//
//  NodeLL.swift
//  AlgorithmPlayground
//
//  Created by Ridvan Ozguvenir on 12/01/2018.
//  Copyright © 2018 Ridvan Ozguvenir. All rights reserved.
//

import Foundation

class NodeLL {
    var value: Int?
    var next: NodeLL?
    
    init() {
        self.value = 0
    }
    
    init(_ value: Int?, next: NodeLL?) {
        self.value = value
        self.next = next
    }
}

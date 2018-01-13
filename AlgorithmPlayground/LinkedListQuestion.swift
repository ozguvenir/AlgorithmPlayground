//
//  LinkedListQuestion.swift
//  AlgorithmPlayground
//
//  Created by Ridvan Ozguvenir on 12/01/2018.
//  Copyright © 2018 Ridvan Ozguvenir. All rights reserved.
//

import Foundation

class LinkedListQuestion {
    
    var back, front: NodeLL!
    
    var head = NodeLL()
    
    init() {
        let linkedList = NodeLL(1, next: NodeLL(2, next: NodeLL(3, next:NodeLL(4, next: head))))
        head.next = linkedList
        
        print("Result: ", hasCycle(head) ? "It has cycle." : "It has not cycle.")
    }
    
    func hasCycle(_ node: NodeLL?) -> Bool {
        if node != nil {
            back = node
            front = node
            
            while true {
                back = back?.next
                
                if front?.next != nil {
                    front = front?.next?.next
                } else {
                    return false
                }
                
                if back == nil || front == nil {
                    return false
                }
                
                if back === front {
                    return true
                }
            }
        }
        return false
    }
}

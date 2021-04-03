//
//  node.swift
//  algorithms
//
//  Created by Jordan Coffland on 3/30/21.
//

import Foundation

class Node {
    var next : Node?
    var value : Float?
    
    init(value:Float){
        self.value = value
    }
    func setNext(next: Node){
        self.next = next
    }
    func getNext() ->Node? {
        return next
    }
}

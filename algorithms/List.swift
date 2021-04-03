//
//  List.swift
//  algorithms
//
//  Created by Jordan Coffland on 3/30/21.
//

import Foundation

class List{
    var Head : Node?
    var Count : Int = 0
    
    init(Head: Node) {
        self.Head = Head
        var current : Node? = Head
        while current?.getNext() != nil{
            current = current?.getNext()
            Count += 1
        }
    }
    init(numbers : [Float]){
        var current: Node?
        
        for number in numbers {
            let n = Node(value:number)
            Count += 1
            
            if(Head == nil){
                Head = n
                current = n
            }else{
                current?.setNext(next: n)
                current = n
            }
        }
    }
    
    func bubbleSort(){
        for i in 0...Count{
            for j in 0...(Count-i){
                print("\(i) , \(j) :", terminator: " ")
            }
        }
    }
    
    func printList(){
        if(Head == nil){
            return
        }
        var current = Head
        while(current != nil){
            print("\(current!.value ?? 0)", terminator: ", ")
            current = current?.getNext()
        }
    }
}

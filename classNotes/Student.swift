//
//  Student.swift
//  classNotes
//
//  Created by STANISLAV STAJILA on 10/6/23.
//

import Foundation
public class Student{
    var name: String
    var age: Int
    var money: Double
    
    init(name: String, age: Int, money: Double) {
        self.name = name
        self.age = age
        self.money = money
    }
    
    func deposit(amount: Double){
        money += amount
    }
}

enum Rating{
    case fire
    case mid
    case trash
}


public struct StudentStruct{
    var name: String
    var age: Int
    var money: Double
    var rating: Rating
}

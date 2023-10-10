//
//  ViewController.swift
//  classNotes
//
//  Created by STANISLAV STAJILA on 10/6/23.
//

import UIKit

class ViewController: UIViewController {

    //building a blank student aray
    var students: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var s1 = Student(name: "Bob", age: 10, money: 4.23)
        var s2 = Student(name: "Bill", age: 11, money: 8.46)
        
        students.append(s1)
        students.append(s2)
        students.append(Student(name: "Jake", age: 12, money: 16.92))
        
        
        print(students[1].name)
        
        students[1].name = "Will"
        
        print(students[1].name)
        
        students[1].deposit(amount: 8.46)
        print(students[1].money)
        
        var struct1 = StudentStruct(name: "Boby", age: 34, money: 4000, rating: Rating.fire)
        print(struct1.name)
        
        switch struct1.rating {
        case Rating.fire:
            print("You are fired")
        case Rating.mid:
            print("You are mid")
        case .trash:
            print("You are trash")
        default:
            print ("You are nothing")
        }
    }
    
   
    @IBAction func butttonAction(_ sender: Any) {
        
        performSegue(withIdentifier: "toTwo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var nvc = segue.destination as! ViewController2
        nvc.stu = students[0]
    }
    

}


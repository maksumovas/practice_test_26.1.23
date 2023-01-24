//
//  main.swift
//  3hw_2month_22.1.23
//
//  Created by Maksumova Sofia on 22/1/23.
//

import Foundation

class Computer{
    var model: String
    var company: String
    var year: Int
    init(model: String, company: String, year: Int) {
        self.model = model
        self.company = company
        self.year = year
    }
    func showInfo(){
        print("\(model), \(company), \(year)")
    }
}
class NoteBook: Computer{
    var socket: String
    init(model: String, company: String, year: Int, socket: String) {
        self.socket = socket
        super.init(model: model, company: company, year: year)
    }
}


class SmartPhone: Computer{
    var cost: Int
    init(model: String, company: String, year: Int, cost: Int){
        self.cost = cost
        super.init(model: model, company: company, year: year)
    }
}

class RepairService{
    var techniques = [Computer]()
    init(techniques: [Computer]) {
        self.techniques = techniques
    }
    
    func countRepairs() {
    var notebookCount = 0
    var smartphoneCount = 0
    for computer in techniques {
    if computer is NoteBook {
    notebookCount += 1
 } else if computer is SmartPhone {
    smartphoneCount += 1
               }
           }
           print("На сервисе \(notebookCount) ноутбук/ов и \(smartphoneCount) смартфон/ов.")
       }
   }

var sp = SmartPhone(model: "Iphone 14 pro max", company: "Apple", year: 2022, cost: 1440)
var nb = NoteBook(model: "MacBook", company: "Apple", year: 2020, socket: "Type-C")

let techniques = RepairService(techniques: [sp, nb])

techniques.countRepairs()

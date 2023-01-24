//
//  main.swift
//  2hw_2month_14.1.23
//
//  Created by Maksumova Sofia on 14/1/23.
//

import Foundation

//1)Придумать пример с наследованием с тройной иерархией. То есть 1 родитель, от него наследуется 2 наследника, от 2 наследников наследуются еще по 1 классу. Придумать общие параметры. В main вызвать по 1 объекту каждого класса.

class Store{
    var name: String
    var location: String
    var workScedule: String
    var square: Int
    
   
    
    init(name: String, location: String, workScedule: String, square: Int) {
        self.name = name
        self.location = location
        self.workScedule = workScedule
        self.square = square
      
        
    }
    func getInfo(){
        print("\(name), \(location), \(workScedule), \(square)")
    }
}
class ParfumeStore: Store{

    var dayOf: String


    init(name: String, location: String, workScedule: String, square: Int, dayOf: String) {

        self.dayOf = dayOf

        super.init(name: name, location: location, workScedule: workScedule, square: square)
    }
     override func getInfo() {
        print("\(name), \(location), \(workScedule), \(square), \(dayOf) ")
    }
}
class CosmeticStore: ParfumeStore{

    var delivery: String

    init(name: String, location: String, workScedule: String, square: Int, dayOf: String, delivery: String) {
        
        self.delivery = delivery
        
        super.init(name: name, location: location, workScedule: workScedule, square: square, dayOf: dayOf)
    }
    override func getInfo() {
        print("\(name), \(location), \(workScedule), \(square), \(dayOf), \(delivery)")
    }
}

class Hotel: Store{
   
    var rating: Double
    
    init(name: String, location: String, workScedule: String, square: Int, rating: Double) {
        
        self.rating = rating
        
        super.init(name: name, location: location, workScedule: workScedule, square: square)
    }
   override func getInfo(){
        print("\(name), \(location), \(workScedule), \(square), \(rating)")
    }
}
class Casino: Hotel{
    
    var legality: String
    
    
    init(name: String, location: String, workScedule: String, square: Int, rating: Double, legality: String) {

        self.legality = legality
      
        super.init(name: name, location: location, workScedule: workScedule, square: square, rating: rating)
    }
    override func getInfo() {
        print("\(name), \(location), \(workScedule), \(square), \(rating), \(legality)")
    }
}

var parfumeStore = Store(name: "Byrdie", location: "NY", workScedule: "9-00:21-00", square: 100)
parfumeStore.getInfo()

var cosmeticsStore = ParfumeStore(name: "Bonito", location: "Bishkek", workScedule: "9-00:21-00", square: 120, dayOf: "Sunday")
cosmeticsStore.getInfo()

var hotel = Store(name: "Rixos", location: "Dubai", workScedule: "Around the clock", square: 40000)
hotel.getInfo()

var casino = Hotel(name: "Venetian Macao Casino", location: "Macao", workScedule: "Around the clock", square: 980000, rating: 4.5)
casino.getInfo()

//
//2) Создайте класс Student (Студент), который будет наследоваться от класса User с параметрами имя и фамилия и функцией getFullName() с помощью которого можно вывести одновременно имя и фамилию пользователя.
//Класс Студент имеет параметр year (год поступления в вуз). и функцию getCourse(), который будет выводить текущий курс студента (от 1 до 5). Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно. Создать объекты студентов в main и вызовите у них 2 функции getFullName() и getCourse()
class User{
    var name: String
    var surName: String
    init(name: String, surName: String) {
        self.name = name
        self.surName = surName
    }
    func getFullName(){
        print("Name: \(name), surname: \(surName)")
    }
}
class Student: User{
    var year: Int
    
    init(name: String, surName: String, year: Int) {
        
        self.year = year
        
        super.init(name: name, surName: surName)
    }
    func getCourse() -> Int {
        let currentYear = Calendar.current.component(.year, from: Date())
        return currentYear - year
        
    }
}

var student1 = Student(name: "Sam", surName: "Polson", year: 2019)
student1.getFullName()
print("Current course: \(student1.getCourse())")

var student2 = Student(name: "Will", surName: "Willson", year: 2020)
student2.getFullName()
print("Current course: \(student2.getCourse())")




    


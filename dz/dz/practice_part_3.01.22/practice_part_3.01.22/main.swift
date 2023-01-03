////
////  main.swift
////  practice_part_3.01.22
////
////  Created by Maksumova Sofia on 3/1/23.
////
//
//import Foundation
//
//Критерии:
//Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)
//
//
//Максимальное количество баллов за задание - 40
//По истечению 1 часа прием заданий производиться не будет
//

class Store{
    var name: String
    var location: String
    var workScedule: String
    var square: Int
    var delivery: String
   
    
    init(name: String, location: String, workScedule: String, square: Int, delivery: String) {
        self.name = name
        self.location = location
        self.workScedule = workScedule
        self.square = square
        self.delivery = delivery
        
    }
    func getInfo(){
        print("\(name), \(location), \(workScedule), \(square), \(delivery)")
    }
}
class ParfumeStore: Store{
    
    var dayOf: String
    
    
    init(name: String, location: String, workScedule: String, square: Int, delivery: String, dayOf: String) {
        
        self.dayOf = dayOf
        
        super.init(name: name, location: location, workScedule: workScedule, square: square, delivery: delivery)
    }
     override func getInfo() {
        print("\(name), \(location), \(workScedule), \(square),\(delivery) \(dayOf) ")
    }
}
class CosmeticStore: Store{
    
    var dayOf: String
    
    init(name: String, location: String, workScedule: String, square: Int, delivery: String, dayOf: String) {
        self.dayOf = dayOf
        super.init(name: name, location: location, workScedule: workScedule, square: square, delivery: delivery)
    }
    override func getInfo() {
        print("\(name), \(location), \(workScedule), \(square), \(dayOf)")
    }
}

class Hotel{
    var name: String
    var location: String
    var workScedule: String
    var square: Int
    var rating: Int
    init(name: String, location: String, workScedule: String, square: Int, rating: Int) {
        self.name = name
        self.location = location
        self.workScedule = workScedule
        self.square = square
        self.rating = rating
    }
    func getData(){
        print("\(name), \(location), \(workScedule), \(square), \(rating)")
    }
}
class Restaurant: Hotel{
    
    var cuisine: String
    init(name: String, location: String, workScedule: String, square: Int, rating: Int, cuisine: String) {
        self.cuisine = cuisine
        super.init(name: name, location: location, workScedule: workScedule, square: square, rating: rating)
    }
    override func getData() {
        print("\(name), \(location), \(workScedule), \(square), \(rating), \(cuisine)")
    }
}
class Casino: Hotel{
    

}


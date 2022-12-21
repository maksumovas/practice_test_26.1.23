//
//  main.swift
//  1hw_2month
//
//  Created by Maksumova Sofia on 21/12/22.
//

import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

class Car{
    var model: String
    var manufacturer: String
    var year: Int
    var bodyWork: String
    var engine: Double
    var drive: String
    var steeringWheel: String
    var acceleration: Double
    init(model: String, manufacturer: String, year: Int, bodyWork: String, engine: Double, drive: String, steeringWheel: String, acceleration: Double) {
        self.model = model
        self.manufacturer = manufacturer
        self.year = year
        self.bodyWork = bodyWork
        self.engine = engine
        self.drive = drive
        self.steeringWheel = steeringWheel
        self.acceleration = acceleration
    }
    func magnifier(){
        self.engine += 1
        self.acceleration -= 1
    }
}

var car = Car(model: "X7", manufacturer: "BMW", year: 2022, bodyWork: "SUV", engine: 3.0, drive: "four-wheel drive", steeringWheel: "Left-hand drive", acceleration: 7)



car.magnifier()
print("Engine - \(car.engine)")
print("Acceleration - \(car.acceleration)")
    
//2. Создать класс "Магазин" и "Продукт" и задать им свойства
////Также создать функцию добавления продукта в магазин и отображения товаров в магазине
    
class Store{
    var products = [Product]()
    func addNewProduct(product: Product){
        products.append(product)
    }
}

class Product{
var name: String
var manufacturer: String
var weight: Int
var barcode: Int
var price: Int
var availability: String
  
    init(name: String, manufacturer: String, weight: Int, barcode: Int, price: Int, availability: String) {
        self.name = name
        self.manufacturer = manufacturer
        self.weight = weight
        self.barcode = barcode
        self.price = price
        self.availability = availability
    }
}

var bread = Product(name: "Хлеб", manufacturer: "Хлебный дом", weight: 300, barcode: 556677889900, price: 30, availability: "available")
var water = Product(name: "Вода", manufacturer: "Legend", weight:500, barcode: 445566778899, price: 30, availability: "available")

var store = Store()
store.addNewProduct(product: bread)
store.addNewProduct(product: water)

for i in store.products{
    print("\(i.name). \(i.manufacturer). \(i.weight). \(i.barcode). \(i.price). \(i.availability)")
}

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

class Bank{
    var customers = [Int:Customer]()
    func addNewCustomer(customer: Customer){
        
        customers[customer.ID] = customer
    }
    func totalCustomers() -> Int{
        
       return customers.count
    }
    func balanceDisplay(ID: Int)->Double{
        return customers[ID]!.balance
        
    }
    func fundsTransfer(customer1: Customer, customer2: Customer) -> [Double]{
        customer1.balance -= 1
        customer2.balance += 1
        return [customer1.balance, customer2.balance]
    }
}

class Customer{
        var name: String
        var lastName: String
        var ID:Int
        var balance: Double
        init(name: String, ID: Int, balance: Double, lastName: String) {
            self.name = name
            self.lastName = lastName
            self.ID = ID
            self.balance = balance
        }
}

var bank = Bank()
var customer1 = Customer(name: "Simon", ID: 7770777, balance: 1000000, lastName:"Smith")
var customer2 = Customer(name: "Erika", ID: 8880888, balance: 2000000, lastName:"Wilson")
bank.addNewCustomer(customer: customer1)
bank.addNewCustomer(customer: customer2)
print(bank.totalCustomers())
print(bank.balanceDisplay(ID: customer2.ID))
print(bank.fundsTransfer(customer1: customer1, customer2: customer2))


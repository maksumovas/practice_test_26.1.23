//
//  main.swift
//  2hw_2month
//
//  Created by Maksumova Sofia on 23/12/22.
//

import Foundation

//#1. Создать класс Магазин
//Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
//Создать класс Товар
//Свойства: Название товара, кол-во. Цена товара
//После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами

class Store{
    var name: String
    var square: Int
    var location: String
    var workscedule: String
    var products = ["Lipstick", "Mascara", "Bronzer"]
   
    init(name: String, square: Int, location: String, workscedule: String) {
        self.name = name
        self.square = square
        self.location = location
        self.workscedule = workscedule
    }
    func getInfo(){
        print("Name: \(name), square: \(square), location: \(location), workscedule: \(workscedule)")
    }
}

class Product{
    var name: String
    var quantity: Int
    var price: Int
    
    init(name: String, quantity: Int, price: Int) {
        self.name = name
        self.quantity = quantity
        self.price = price
    }
     func getInfo(){
        print("Name: \(name), quantity: \(quantity), price: \(price)")
    }
}


class autoPartsStore: Store{
   override func getInfo(){
        print("Name: \(name), square: \(square), location: \(location), workscedule: \(workscedule)")
    }
}

class clothingStore: Store{
   override func getInfo(){
        print("Name: \(name), square: \(square), location: \(location), workscedule: \(workscedule)")
    }
}

 var cosmetics = Store(name: "Bonito", square: 100, location: "Aitmatov st", workscedule: "9:00-21:00")
cosmetics.getInfo()

var autoParts = autoPartsStore(name: "Auto Zone", square: 150, location: "Toktogul st", workscedule: "9:00-21:00")
autoParts.getInfo()

var clothes = clothingStore(name: "MaxMara", square: 180, location: "Erkindik st", workscedule: "9:00-21:00")
clothes.getInfo()

var liptick = Product(name: "Charlotte Tilbury", quantity: 1, price: 2500)
liptick.getInfo()

//
//  main.swift
//  dz7_1
//
//  Created by Maksumova Sofia on 9/12/22.


var totalPrice: Double = 0
var totalItems: Int = 0

func add(name: String, manufacturer: String, weight: Float, barcode: Int, price: Double, discount: String?, availability: String){
    totalPrice += price
    totalItems += 1
}


add(name:"Хлеб", manufacturer: "Хлебный дом", weight: 300, barcode: 4607177744216, price: 30, discount: nil, availability: "are available")
add(name:"Молоко", manufacturer: "Веселый Молочник", weight: 900, barcode: 4607177744216, price: 125, discount: nil, availability: "are available")
add(name:"Мясо говяжье", manufacturer: "Мираторг", weight: 1000, barcode: 4607177744216, price: 800, discount: nil, availability: "are available")
add(name:"Курица", manufacturer: "Индилайт", weight: 1000, barcode: 4607177744216, price: 400, discount: nil, availability: "are available")
add(name:"Масло растительное", manufacturer: "Слобода", weight: 1000, barcode: 4607177744216, price: 180, discount: nil, availability: "are available")
add(name:"Масло сливочное", manufacturer: "Беловодское", weight: 500, barcode: 4607177744216, price: 300, discount: nil, availability: "are available")
add(name:"Яйца куриные", manufacturer: "Птицеферма", weight: 550, barcode: 4607177744216, price: 120, discount: nil, availability: "are available")
add(name:"Сливки", manufacturer: "Домик в деревне", weight: 480, barcode: 4607177744216, price: 105, discount: nil, availability: "are available")
add(name:"Чипсы", manufacturer: "Lays", weight: 140, barcode: 4607177744216, price: 800, discount: nil, availability: "are available")
add(name:"Семга", manufacturer: "Русское море", weight: 300, barcode: 4607177744216, price: 1500, discount: nil, availability: "are available")
add(name:"Авокадо", manufacturer: "Бразилия", weight: 200, barcode: 4607177744216, price: 100, discount: nil, availability: "are available")
add(name:"Бананы", manufacturer: "Индия", weight: 1000, barcode: 4607177744216, price: 155, discount: nil, availability: "are available")
add(name:"Сахар", manufacturer: "Продимекс", weight: 1000, barcode: 4607177744216, price: 85, discount: nil, availability: "are available")
add(name:"Вода", manufacturer: "Legend", weight: 500, barcode: 4607177744216, price: 25, discount: nil, availability: "are available")
add(name:"Сметана", manufacturer: "Веселый Молочник", weight: 315, barcode: 4607177744216, price: 80, discount: nil, availability: "are available")
add(name:"Апельсины", manufacturer: "Бразилия", weight: 1000, barcode: 4607177744216, price: 160, discount: nil, availability: "are available")
add(name:"Виноград", manufacturer: "Узбекситан", weight: 1000, barcode: 4607177744216, price: 145, discount: nil, availability: "are available")
add(name:"Грейпфрут", manufacturer: "Турция", weight: 1000, barcode: 4607177744216, price: 165, discount: nil, availability: "are available")
add(name:"Яблоки зеленые", manufacturer: "Аргентина", weight: 1000, barcode: 4607177744216, price: 250, discount: nil, availability: "are available")
add(name:"Огурцы", manufacturer: "Кыргызстан", weight: 1000, barcode: 4607177744216, price: 200, discount: nil, availability: "are available")
add(name:"Брокколи", manufacturer: "Китай", weight: 400, barcode: 4607177744216, price: 190, discount: nil, availability: "are available")
add(name:"Кола", manufacturer: "Coca Cola", weight: 1500, barcode: 4607177744216, price: 82, discount: nil, availability: "are available")
add(name:"Сок", manufacturer: "J7", weight: 900, barcode: 4607177744216, price: 120, discount: nil, availability: "are available")
add(name:"Холодный чай", manufacturer: "Fuse Tea", weight: 1000, barcode: 4607177744216, price: 74, discount: nil, availability: "are available")
add(name:"Кофе растворимый", manufacturer: "Carte Noire", weight: 95, barcode: 4607177744216, price: 650, discount: nil, availability: "are available")
add(name:"Мука", manufacturer: "Акун", weight: 2000, barcode: 4607177744216, price: 130, discount: nil, availability: "are available")
add(name:"Соль", manufacturer: "4 life", weight: 500, barcode: 4607177744216, price: 100, discount: nil, availability: "are available")
add(name:"Перец черный", manufacturer: "Royal", weight: 100, barcode: 4607177744216, price: 45, discount: nil, availability: "are available")
 
print(totalPrice)
print(totalItems)

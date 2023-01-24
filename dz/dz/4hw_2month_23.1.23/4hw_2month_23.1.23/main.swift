//
//  main.swift
//  4hw_2month_23.1.23
//
//  Created by Maksumova Sofia on 24/1/23.
//

import Foundation

//Создать класс Пенсионер с параметрами имя, фамилия, текущая сумма пенсии, кол-во лет на пенсии. Создать объекты в main и заполнить данными. Создать класс Соц.Фонд с приватным параметром массив пенсионеров, также публичная функция добавить пенсионера, приватная функция, которая увеличивает пенсию если кол-во лет на пенсии превышает 5 лет на 1000 сом. Эта приватная функция вызывается в другой доступной функции раздать пенсию. Функция раздачи пенсии отображает всех пенсионеров: фио и сумма пенсии.

class Pensioner{
    var name: String
    var surname: String
    var pensionAmount: Int
    var yearsOnPension: Double
    init(name: String, surname: String, pensionAmount: Int, yearsOnPension: Double) {
        self.name = name
        self.surname = surname
        self.pensionAmount = pensionAmount
        self.yearsOnPension = yearsOnPension
    }
}
class socialFund{
    private var pensioners = [Pensioner]()
    public func addPensioner(pensioner: Pensioner){
        pensioners.append(pensioner)
    }
    private func increasePension(){
        for pensioner in pensioners {
            if pensioner.yearsOnPension > 5{
                pensioner.pensionAmount += 1000
            }
        }
    }
        
    func distributePension() {
     for pensioner in pensioners {
         print("\(pensioner.name) \(pensioner.surname) has a pension of \(pensioner.pensionAmount)")
            }
        }
    }

var pensioner1 = Pensioner(name: "Marie", surname: "Hackenberg", pensionAmount: 5000, yearsOnPension: 10)
var pensioner2 = Pensioner(name: "Boris", surname: "Wilson", pensionAmount: 2500, yearsOnPension: 3)

let SocialFund = socialFund()
SocialFund.addPensioner(pensioner: pensioner1)
SocialFund.addPensioner(pensioner: pensioner2)
SocialFund.distributePension()

              // Output: John Smith has a pension of 3000.0
              //         Mary Johnson has a pension of 1500.0




//
//  main.swift
//  1hw_2month_11.1.23
//
//  Created by Maksumova Sofia on 11/1/23.
//
//
//import Foundation
//
//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0. Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.
//
//class Person{
//    var name: String
//    var lastName: String
//    var money: Int
//
//    init(name: String, lastName: String, money: Int) {
//        self.name = name
//        self.lastName = lastName
//        self.money = money
//    }
//    func moneyExchange(amount: Int, person1: Person, person2: Person){
//        var personOne = person1
//        var personTwo = person2
//        personOne.money += amount
//        personTwo.money -= amount
//        print("\(personTwo.name) перевел \(personOne.name) \(amount) сом, у \(personOne.name) на счету стало \(personOne.money) сом")
//        print("\(personTwo.name) перевел \(personOne.name) \(amount) сом, у \(personTwo.name) на счету осталось \(personTwo.money) сом")
//    }
//    func showInfo(){
//        print("\(name), \(lastName), \(money)")
//    }
//}
//
//var person1 = Person(name: "Nurlan", lastName: "Talasbaev", money: 0)
//print(person1.money)
//
//var person2 = Person(name: "Meder", lastName: "Razzakov", money: 1258)
//print(person2.money)
//
//person2.moneyExchange(amount: 500, person1: person1, person2: person2)
//
//person1.showInfo()

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0. Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.

class Client{
    var name: String
    var surname: String
    var middleName: String
    var loanAmount: Double
    var loanTerm: Int
    var repaymentAmount: Double = 0
    var percent: Double
    
    init(name: String, surname: String, middleName: String, loanAmount: Int, loanTerm: Int, percent: Double) {
        self.name = name
        self.surname = surname
        self.middleName = middleName
        self.loanAmount = Double(loanAmount)
        self.loanTerm = loanTerm
        self.percent = percent
    }
    func clientInfo(){
        print("\(name) \(surname) \(middleName) will have to repay \(repaymentAmount)")
    }
}

class Bank{
    var clients = [Client]()
    var percents = [Client]()
    var percent: Double
    init(clients: [Client] = [Client](), percent: Double) {
        self.clients = clients
        self.percent = percent
    }
    //Проц ставка по каждому клиенту
    func calculateRepaymentAmount(){
        for client in clients {
            client.repaymentAmount = (Double(client.loanAmount) * Double(client.loanTerm) * client.percent)
        }
    }
    //Выводит график погашений по месяцам
    func repayment(client: Client) {
        let monthlyRepayment = (client.repaymentAmount + client.loanAmount) / (Double(client.loanTerm) * Double(12))
            for i in 1...client.loanTerm * 12 {
                print("Month \(i): \(monthlyRepayment)")
        }
    }
}
var client = Client(name: "Mederov", surname: "Mederov", middleName: "Mederovich", loanAmount: 100000, loanTerm: 1, percent: 0.3)
var client1 = Client(name: "Adil", surname: "Adilev", middleName: "Adilevich", loanAmount: 200000, loanTerm: 2, percent: 0.15)
var client2 = Client(name: "Ulan", surname: "Ulanov", middleName: "Ulanovich", loanAmount: 300000, loanTerm: 3, percent: 0.1)
//
var bank = Bank(clients: [client, client1, client2], percent: 0.3)


print(bank.calculateRepaymentAmount())

client.clientInfo()
bank.repayment(client: client)

client1.clientInfo()
bank.repayment(client: client1)

client2.clientInfo()
bank.repayment(client: client2)


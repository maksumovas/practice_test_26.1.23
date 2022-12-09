////
////  main.swift
////  dz6_9.12.22
////
////  Created by Maksumova Sofia on 9/12/22.
////
//
//№1. Через readLine вводится любое количество слов
//После чего эти слова сортируются по количеству символов
//Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное
//
//№2. Составить список из 20 (словарь) контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено
//
//ДОП. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
//В игре должно быть 5 раундов по 3 вопроса
//Так же должны быть несгораемые суммы
//Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно




    var contact = ["Kim - 0776584507", "Artur - 0774834413", "Rusya - 0233889077", " Karina - 0557001207", "Mara - 0778577659", " Kairat - 0552661155", "Sasha - 0705546459", "Fara - 0502041204", "Cindy - 0700635530", "Mafa - 0707573567", "Pavel - 0700777078", "Leyla - 0555367700", "Yana - 0772776060", "Elsa - 0555683143", "Jama - 0505673543", "Ais - 0994039959", "Exact time - *340#", "Balance - *505#", "Zuza - 0734930778", "Lisa - 0771553323, "]
    
    var contactSorted = contact.sorted()
    
    var a:[String] = []
    var b:[String] = []
    var z:[String] = []
    var i:[String] = []
    var k:[String] = []
    var m:[String] = []
    var n:[String] = []
    var p:[String] = []
    var t:[String] = []
    var u:[String] = []
    var ee:[String] = []
    var yu:[String] = []
    var q:[String] = []
    var td:[String] = []
    var r:[String] = []
    var ds:[String] = []
    var ad:[String] = []
    var fe:[String] = []
    var df:[String] = []
    var vf:[String] = []
    var yug:[String] = []
    var bel:[String] = []
    var bela:[String] = []
    var bels:[String] = []
    var beld:[String] = []
    var belc:[String] = []
    var belx:[String] = []
    var sdf:[String] = []
    
    for x in contactSorted {
        if x.description.hasPrefix("A"){
            a.append("\(i)")
        }
        if x.description.hasPrefix("B"){
            b.append("\(i)")
        }
        if x.description.hasPrefix("C"){
            z.append("\(i)")
        }
        if x.description.hasPrefix("D"){
            i.append("\(i)")
        }
        if x.description.hasPrefix("E"){
            k.append("\(i)")
        }
        if x.description.hasPrefix("F"){
            m.append("\(i)")
        }
        if x.description.hasPrefix("G"){
            n.append("\(i)")
        }
        if x.description.hasPrefix("H"){
            p.append("\(i)")
        }
        if x.description.hasPrefix("I"){
            t.append("\(i)")
        }
        if x.description.hasPrefix("J"){
            u.append("\(i)")
        }
        if x.description.hasPrefix("K"){
            ee.append("\(i)")
        }
        if x.description.hasPrefix("L"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("M"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("N"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("O"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("P"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("Q"){
            yu.append("\(i)")
        }
        if x.description.hasPrefix("R"){
            yu.append("\(i)")
            if x.description.hasPrefix("S"){
                yu.append("\(i)")
            }
            if x.description.hasPrefix("T"){
                yu.append("\(i)")
            }
            if x.description.hasPrefix("U"){
                yu.append("\(i)")
            }
            if x.description.hasPrefix("V"){
                yu.append("\(i)")
                if x.description.hasPrefix("W"){
                    yu.append("\(i)")
                }
                if x.description.hasPrefix("X"){
                    yu.append("\(i)")
                }
                if x.description.hasPrefix("Y"){
                    yu.append("\(i)")
                }
                if x.description.hasPrefix("Z"){
                    yu.append("\(i)")
                }
                
            }
        }
    }
    print("""
Всего контактов: \(contactSorted.count) \(contactSorted)
Контактов на букву A: \(a.count)
Контактов на букву B: \(b.count)
Контактов на букву C: \(q.count)
Контактов на букву D: \(td.count)
Контактов на букву E: \(r.count)
Контактов на букву F: \(df.count)
Контактов на букву G: \(fe.count)
Контактов на букву H: \(z.count)
Контактов на букву I: \(i.count)
Контактов на букву J: \(df.count)
Контактов на букву K: \(k.count)
Контактов на букву L: \(vf.count)
Контактов на букву M: \(m.count)
Контактов на букву N: \(n.count)
Контактов на букву O: \(vf.count)
Контактов на букву P: \(p.count)
Контактов на букву Q: \(b.count)
Контактов на букву R: \(ad.count)
Контактов на букву S: \(t.count)
Контактов на букву T: \(u.count)
Контактов на букву U: \(yug.count)
Контактов на букву V: \(bel.count)
Контактов на букву W: \(bela.count)
Контактов на букву X: \(belc.count)
Контактов на букву Y: \(beld.count)
Контактов на букву Z: \(bels.count)
""")


//
//  dz_4.swift
//  dz
//
//  Created by Maksumova Sofia on 27/11/22.
//


//
//  main.swift
//  hw_4_27.11.22
//
//  Created by Maksumova Sofia on 27/11/22.
//

import Foundation

func dz4_1(){
    var num = 0
    var out_words: String = ""
    var cw: String = ""
    let words = "tv, tea, walk, table, people, journey, mountain, strengths, conscience, performance, announcments, objectivizing, accidentalness, methoxybenzenes, ACCLIMATIZATIONS, administratorship, ABSENTMINDEDNESSES, ABDOMINOHYSTEROTOMY, ABDOMINOHYSTERECTOMY, ANARCHOINDIVIDUALIST"

    for ch in words {
        if(ch != " "){
            
            
            if(ch == ","){
            out_words += ("\(cw) - \(num) symbols ")
                num = 0
                cw = ""
            }
            else {
                cw += String(ch)
                num += 1
            }
        }

    }

    print(out_words)
}

func dz4_2(){

    var digits: String = ""

    for i in 1...100{
        if i % 2 == 0{
            digits = digits + "," + String(i)
        }
        else if i % 3 == 0{
            digits = digits + "," + String(i)
        }
        else if i % 4 == 0{
            digits = digits + "," + String(i)
        }
        else if i % 5 == 0{
            digits = digits + "," + String(i)
        }
    }

    print(digits)
    
}


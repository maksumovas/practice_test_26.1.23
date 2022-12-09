//
//  main.swift
//  dz6_1
//
//  Created by Maksumova Sofia on 9/12/22.
//


var p = readLine()!
var array: [String] = []
var string = ""
for i in p{
    if i != "," && i != " " && i != "." {
        string += String(i)
    } else{
        array.append(string)
        p = ""
    }
}
    var arraySorted = array.sorted()
    print(arraySorted)




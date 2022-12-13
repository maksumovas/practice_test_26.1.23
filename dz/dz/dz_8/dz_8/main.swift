//
//  main.swift
//  dz_8
//
//  Created by Maksumova Sofia on 13/12/22.
//

var characters = ["warrior", "sorcerer", "medic", "defender", "boss"]
var charactersHp = [1000, 1000, 1000, 1500]
var charactersDamage = [200, 300, 0, 100, 200]
var bossHp = 5000
var raund = 0
while bossHp > 0{
    raund += 1
    bossHp -= (charactersDamage[0] + charactersDamage[1] + charactersDamage[2] + charactersDamage[3])
    if raund % 2 == 0{
        charactersHp[0] = charactersHp[0] + 200
        charactersHp[1] = charactersHp[1] + 200
        charactersHp[3] = charactersHp[3] + 200
    }
    if bossHp > 0{
        charactersHp[0] = charactersHp[0] - 200
        charactersHp[1] = charactersHp[1] - 200
        charactersHp[2] = charactersHp[2] - 200
        charactersHp[3] = charactersHp[3] - 200
    }
    if bossHp >= 0 && charactersHp.reduce (0,+) > 0{
        print("Герои победили за \(raund) раунд/ов")
        print("\(characters[0]) нанес \(raund * charactersDamage[0]) урона боссу)")
        print("\(characters[1]) нанес \(raund * charactersDamage[1]) урона боссу)")
        print("\(characters[2]) нанес \(raund * charactersDamage[2]) урона боссу)")
        print("\(characters[3]) нанес \(raund * charactersDamage[4]) урона боссу)")
        print("\(characters[4]) нанес \(raund * charactersDamage[4]) урона персонажам, но медик вылечил каждого \(raund / 2 * 200)")
    }
    if bossHp <= 0 && charactersHp.reduce (0,+) > 0{
        print("Все умерли за \(raund) раундов")
    }
    if bossHp > 0 && charactersHp.reduce (0,+) <= 0{
        print("Босс победил за \(raund) раундов")
    }
    if bossHp < 0 && charactersHp.reduce (0,+) > 0{
        print("Персонажи победил за \(raund) раундов")
    }
        
}



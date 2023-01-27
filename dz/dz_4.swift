

import Foundation
//Практическое задание: Используя инструменты ООП написать программу "Кто хочет стать миллионером" Как должна проходить игра. Программа должна запросить имя пользователя, вы вводите и начинаете играть до первого неправильного ответа, за каждый ответ начисляются очки. Результаты всех пользователей сохранять в массив историй. Вопросы и о тветы заполните сами. Реализация произвольная. Попытайтесь, это не итоговое тестирование, проверьте себя!

class MillionaireGame {
    var playerName: String
    var score: Int
    var history: [(name: String, score: Int)] = []
    var questionsAndAnswers: [(question: String, answer: String)] = [("Столица Кыргызстана","Бишкек"), ("Столица Узбекистана", "Ташкент"), ("Столица Казахстана", "Астана")]
    var gameHistory: [(playerName: String, score: Int)]

    init(name: String) {
        self.playerName = name
        self.score = 0
        self.gameHistory = []
      }

      func play() {
          for (index, question) in questionsAndAnswers.enumerated() {
              print("Вопрос \(index + 1): \(question.question)")
              let userAnswer = readLine()
              if userAnswer == question.answer {
                  print("Правильно!")
                  score += 1
              } else {
                  print("Неправильно!")
                  gameHistory.append((playerName, score))
                  break
              }
          }
          print("\(playerName), cпасибо за игру. Ваш финальный балл \(score)")
      }
  }

  print("Добро пожаловать в игру Кто Хочет Стать Миллионером!")
  print("Введите ваше имя:")
  let playerName = readLine()
let game = MillionaireGame(name: playerName!)
  game.play()







import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
            Question(q: "Daktilo kullanılarak yazılan ilk kitap hangisidir?", a: ["Martin Eden", "Gizemli Yabancı", "Hz Süleyman'ın Hazineleri","Tom Sawyer'in Maceraları"], correctAnswer: "Tom Sawyer'in Maceraları"),
            Question(q: "Bilge Kül Kağan hangi Türk devletinin kurucusudur?", a: ["Göktürk Kağanlığı", "Uygur Kağanlığı", "Büyük Selçuklu Devleti","Hazar Kağanlığı"], correctAnswer: "Uygur Kağanlığı"),
            Question(q: "En fazla sınır komşusuna sahip olan ülke hangisidir?", a: ["Brezilya", "Türkiye", "Çin","Rusya"], correctAnswer: "Çin"),
            Question(q: "Hangi ülkenin milli marşında söz bulunmaz?", a: ["İspanya", "Almanya", "Rusya","Uganda"], correctAnswer: "İspanya"),
            Question(q: "Sözde Kızlar romanının yazarı kimdir?", a: ["Peyami Safa", "Sabahattin Ali", "Orhan Pamuk","Yaşar Kemal"], correctAnswer: "Peyami Safa"),
            Question(q: " Dünyanın en derin gölü hangisidir?", a: ["Van Gölü","Baykal Gölü", "Tanganika Gölü","Vostok Gölü"], correctAnswer: "Baykal Gölü"),
            Question(q: "Osmanlı Devleti'nin ilk resmi gazetesi nedir?", a: ["Ceride-i Havadis", "Tasvir i Efkar", "Tercüman'ı Ahval","Takvim'i Vekayi"], correctAnswer: "Takvim'i Vekayi"),
            Question(q: "Yazın kırlarda ve ekin tarlalarında yetişen kırmızı narin çiçek hangisidir?, a: ["Kır Çiçeği", "Gelincik", "Gin","Gül"], correctAnswer: "Kır Çiçeği"),
            Question(q: "Dünyada bilinen en eski enstrüman hangisidir?", a: ["Flüt", "Gitar", "Davul","Tef"], correctAnswer: "Gitar"),
            Question(q: "Deniz yüzeyinin altında ve üstünde yol alabilen savaş veya araştırma gemisi hangisidir?", a: ["Deniz Motoru", "Deniz Altı", "Gemi","Savaş Gemisi"], correctAnswer: "Deniz Altı")]
     func getQuestionText() -> String {
         return quiz[questionNumber].text
    }

    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

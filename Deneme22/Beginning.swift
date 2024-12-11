
import Foundation
// Amaç: Soruları kullanıcıya gösterip cevabını bulup cevapları kullanıcıya göstermesi.
// Sorularımı gösterecek bir tane text string değişkenime ihtiyaç var. 
// Ardından cevapları ve doğru cevabı gösterecek değişkene ihtiyacım var.
struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}


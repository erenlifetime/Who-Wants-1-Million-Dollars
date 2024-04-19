
import Foundation
// Amacım soruları kullanıcıya gösterip cevabını bulup cevapları kullanıcıya göstermesi.
// sorularımı gösterecek bir tane text string değişkenime ihtiyaç var. 
// Ardından cevapları ve doğru cevabı gösterecek kullanıcıya değişkene ihtiyaçım var.
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


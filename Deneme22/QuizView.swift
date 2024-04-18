
import Foundation
// struct QuizBrain ile değişken tanımlayacağız. var ve let ile
struct QuizBrain {
    // Question adetim 10 ve questionNumber ile 0. satırdan başlayacak ve 10 a kadar gidecek bir kod yazıyoruz.
    // score değişkenim ile doğru olduğunda puan vermesini yanlış ise puan vermemesini söyleyeceğiz.
    // quiz değişkenim ile sorularımı quiz e aktarıyorum böylelikle diğer sayfalarda kullanabilmek için.
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
    // Yukarıda tanımladığım değişkenlerimi eyleme geçirme aşamasını func ile gerçekleştiriyoruz.
    // ilk fonksiyon işlemimde sorularımı yazdırıyorum return ile yazdırdıktan sonra geri yolluyorum.
    // 2. fonksiyon da sorularımı döndürdüğüm gibi cevapları(answers) da döndürmem gerekiyor.
     func getQuestionText() -> String {
         return quiz[questionNumber].text
    }
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
        // butona tıkladığımda bana doğruysa score u 1 attırmalı yanlışsa score a hiç dokunmayacak bir kod yazmalıyım.
    mutating func getScore() -> Int {
        return score
    }
    // questionNumber ile 0 a ayarladık. Ardından diğer satıra veya soruya geçecek kodu alttaki gibi yazıyoruz.
    // questionNumber ı 1 arttırıp quiz miktarına yani 10 a küçüktür diyoruz böylelikle 1 den 10 a kadar bana sorularımı döndürecek.
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    mutating func checkAnswer(userAnswer: String) -> Bool {
    // doğru cevap(rightAnswer) için cevabı değiştirmen gerekiyor. return true ve false döndürünce olursa çalıştır olmazsa false ver
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

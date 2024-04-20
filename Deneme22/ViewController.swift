// quiz değişkeni oluşturdum questionNumber[1] ile çalıştırdığım zaman 1 tane soru gösteriyor buttonlara tıkladığımda hiçbirşey çalışmıyor.
// answer diye ayrı bir değişken oluştursam ve cevapları yazsam.! Button a tıkladığımda yanlışları ve doğruları göstermesi lazım buttonların.
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    // PARAMETRE ÇAĞIRMAK İÇİN BAŞLANGICI BUNUNLA ATTIK
    var quizBrain = QuizBrain()  
//    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
}
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        // PARAMETRE DE 2. ADIM YERİ
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
           }
// Butona tıkladığımızda soruların değişmediğini farkettim bunu nasıl hallederiz updateUI ile
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        let answerChoices = quizBrain.getAnswers()
        answer1.setTitle(answerChoices[0], for: .normal)
        answer2.setTitle(answerChoices[1], for: .normal)
        answer3.setTitle(answerChoices[2], for: .normal)
        answer4.setTitle(answerChoices[3], for: .normal)
        scoreLabel.text = "Score\(quizBrain.getScore())"
// Arka rengi yeşil veya kırmızı olduktan sonra clear yapıp bir sonraki soruya geçiyoruz
        answer1.backgroundColor = UIColor.clear
        answer2.backgroundColor = UIColor.clear
        answer3.backgroundColor = UIColor.clear
        answer4.backgroundColor = UIColor.clear
        
    }
    
}


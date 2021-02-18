//
//  ViewController.swift
//  Quizzler
//
//  Created by Karlis Butins on 18/02/2021.
//  Copyright © 2021 karliscodingco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer(userAnswer)
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
        
    
        @objc func updateUI() {
            questionLabel.text = quiz[questionNumber].text
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
            progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)

        }


}

//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButtton: UIButton!
    
    let quizes = [
        ["4+2 = 6", "True"],
        ["5-2 > 1", "True"],
        ["3+8 < 10", "False"]
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerSelected(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let answer = quizes[questionNumber][1]
        if userAnswer==answer{
            print("Right!")
        } else{
            print("Wrong!")
        }
        
        
        questionNumber+=1
        
        if questionNumber > quizes.count-1 {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizes[questionNumber][0]
    }
}


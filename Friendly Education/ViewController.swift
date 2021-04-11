//
//  ViewController.swift
//  Friendly Education
//
//  Created by Girl 05 on 4/9/21.
//

import UIKit

//who was the first female supreme justice/created sth/invented sth/astronaut
//All this information comes from https://www.womansday.com/life/a34908026/womens-history-month-facts/
var flashcardQuestions = ["When did women get the right to vote?",
                          "What and when was the Equal Pay Act?",
                          "What, when, and where was the first women's rights convention?",
                          "Who was the first female astronaut who went to space?",
                          "Who was the first female Supreme Court Justice?",
                          "Who was the first female to win two Nobel Prizes?",
                          "When was the first Women's History Day held?",
                          "When did Women's History Day become Women's History Week?",
                          "When did Women's History Week become Women's History Month?",
                          "Did the 19th admendment allow ALL women to vote?",
                          "What was the first legislature that allowed women to vote?",
                          "Who was the first female to pass astronaut testing?",
                          "Until when could women get their own credit cards?",
                          "How much women make up Congress?",
                          "Who was the oldest person in the world?"]

var flashcardAnswers = ["August 20, 1920",
                        "The Equal Pay Act was passed on June 10, 1963 to try to abolish the wage discrimination against women.",
                        "The Seneca Falls Convention was held in New York on July 19-20, 1848.",
                        "Sally Ride",
                        "Sandra Day O'Conner",
                        "Marie Curie",
                        "1909",
                        "1978",
                        "1987",
                        "No! There were still many races who were still not able to vote.",
                        "Wyoming Territory legislature",
                        "Geraldyn 'Jerrie' Cobb",
                        "1974",
                        "Only 24% of Congress are women",
                        "Jeanne Calment",]

var whatFlashcardYouAreOn = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var lblFlashcardContent: UILabel!
    
    @IBAction func clickedNextFlash(_ sender: Any) {
        backFlash.isHidden = true
        frontFlash.isHidden = false
        lblHeading.text = "Question:"
        
        lblFlashcardContent.text = flashcardQuestions[whatFlashcardYouAreOn]
        //For debugging: print(String(whatFlashcardYouAreOn))
        
        if whatFlashcardYouAreOn == 14 {
            print(whatFlashcardYouAreOn)
            whatFlashcardYouAreOn = 0
        } else {
            whatFlashcardYouAreOn += 1
            print(whatFlashcardYouAreOn)
        }
    }
    
    @IBAction func clickedBackFlash(_ sender: Any) {
        
        if whatFlashcardYouAreOn >= 1 {
            whatFlashcardYouAreOn -= 1
        } else{
            whatFlashcardYouAreOn = 14
        }
        
        lblFlashcardContent.text = flashcardQuestions[whatFlashcardYouAreOn]
        
    }
    
    @IBOutlet weak var backFlash: UIImageView!
    @IBOutlet weak var frontFlash: UIImageView!
    
    
    @IBAction func clickedFlip(_ sender: Any) {
        
        lblFlashcardContent.text = flashcardAnswers[whatFlashcardYouAreOn]
        lblHeading.text = "Answer:"
        frontFlash.isHidden = true
        backFlash.isHidden = false
        
//Alternate version of the flip code
//        if lblFlashcardContent.text == flashcardQuestions[whatFlashcardYouAreOn] {
//            lblFlashcardContent.text = flashcardAnswers[whatFlashcardYouAreOn]
//            lblHeading.text = "Answer:"
//            frontFlash.isHidden = true
//            backFlash.isHidden = false
//        } else if lblFlashcardContent.text == flashcardAnswers[whatFlashcardYouAreOn] {
//            lblFlashcardContent.text = flashcardQuestions[whatFlashcardYouAreOn]
//            backFlash.isHidden = true
//            frontFlash.isHidden = false
//            lblHeading.text = "Question:"
//        }
        
    }
    
    
    
    
    //    func famousWomenDisplay (picture : String, number : Int, name : String) {
//        //picture.image = name
//        lblTitle.text = name
//        print(name)
//    }
    
//    @IBAction func btnOprah(_ sender: Any) {
//        //famousWomenDisplay(picture : "Oprah", number : 0, name : "Oprah Winfrey")
//        //lblTitle.text = "Oprah Winfrey"
//        //womanSelected = "Oprah Winfrey"
//    }
//    
//    @IBAction func btnRBG(_ sender: Any) {
//        //famousWomenDisplay(picture: "RBG", number : 1, name : "RBG")
//    }
//    
//    
//    @IBAction func btnMalala(_ sender: Any) {
//        //famousWomenDisplay(picture : "Malala", number : 2, name : "Malala")
//    }
//    
//    @IBAction func btnTaylor(_ sender: Any) {
//        //famousWomenDisplay(picture : "Taylor", number : 3, name: "Taylor Swift")
//    }
//    
//    @IBAction func btnSojourner(_ sender: Any) {
//        //famousWomenDisplay(picture : "Sojourner", number : 4, name : "Sojourner Truth")
//    }
//    
//    @IBAction func btnMarie(_ sender: Any) {
//        //famousWomenDisplay(picture : "Marie", number : 5, name : "Marie Curie")
//    }
//    
//    @IBAction func btnSally(_ sender: Any) {
//        //famousWomenDisplay(picture : "Sally", number : 6, name : "Sally Ride")
//    }
    
    
    override func viewDidLoad() {
        //lblFlashcardContent.text = flashcardQuestions[whatFlashcardYouAreOn]
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}


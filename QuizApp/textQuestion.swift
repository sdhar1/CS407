//
//  textQuestion.swift
//  QuizApp
//
//  Created by Satyam Dhar on 10/2/15.
//  Copyright © 2015 Satyam Dhar. All rights reserved.
//

import Foundation

class textQuestion {
    var question : String!
    var answer : String!
    var correctAnswer : String!
    
    func setCorrectAnswer(cAnswer : String) {
        correctAnswer=cAnswer
    }
    
    func setAnswer(rAnswer : String) {
        answer=rAnswer
    }
    
    func getCorrectAnswer() -> String {
        return correctAnswer
    }
    
    func getAnswer() -> String {
        return answer
    }
    
    
    func setQuestion(Question : String) {
        question=Question
    }
    
    func getQuestion() -> String {
        return question
    }

    
}
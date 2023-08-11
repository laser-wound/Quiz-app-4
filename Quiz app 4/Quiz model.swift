//
//  Quiz model.swift
//  Quiz app 4
//
//  Created by Omar Alshehhi on 23/07/2023.
//

import Foundation
 
struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    var correct : Int?
}
 
var myQuiz1 : [QuizModel] = [
 
    QuizModel(img: "red",
    text: "Who developed the Red Dead series?",
    answer: ["Rockstar San Diego","Rockstar India","Rockstar Toronto","Rockstar London"],
    correct: 0),
     
    QuizModel(img: "blue",
    text: "What year Red Dead Redemption 2 is set in?",
    answer: ["1845","2000","1899","1950"],
    correct: 2),
     
    QuizModel(img: "game",
    text: "What gaming engine The RDR2 is based on?",
    answer: ["RAGE","Unity","CryEngine","Unreal Engine"],
    correct: 0),
     
    QuizModel(img: "green",
    text: "When did the development of Red Dead Redeption 2 began ?",
    answer: ["2008","2011","2017","2010"],
    correct: 3),
     
    QuizModel(img: "Pink1",
    text: "What is the main form of transportation in the game?",
    answer: ["Cars","Horses","Trains","Camels"],
    correct: 1),
 
]
 
func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}
 
func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}

//
//  QuizView.swift
//  Quiz app 4
//
//  Created by Omar Alshehhi on 23/07/2023.
//

import SwiftUI
 
struct Quiz1 : View {
     
    @State var i : Int = 0
     
    @State var score = 0
    @State private var showActionSheet = false
     
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
             
            if(self.i < myQuiz1.count){
                 
                 
                Image(myQuiz1[self.i].img!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                 
                Text(myQuiz1[self.i].text!)
                 
                 
                //answer 0
                Button(action:{
                    self.showActionSheet = true
                    self.buttonAction(n: 0)
                },label: {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                 
                //answer 1
                Button(action:{
                    self.buttonAction(n: 1)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                 
                //answer 2
                Button(action:{
                    self.buttonAction(n: 2)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
                 
                //answer 3
                Button(action:{
                    self.buttonAction(n: 3)
                    self.showActionSheet = true
                },label: {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue,lineWidth: 2)
                        )
                })
                .actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(
                        title: Text("Score"),
                        message: Text("Score : \(self.score) / \(myQuiz1.count)"),
                        buttons: [
                            .cancel { print(self.showActionSheet) }
                        ]
                    )
                }
 
            }
                 
            else{
                FinalView(score: self.score, totalQuestions: 5)
                
            }
             
             
        }
        .padding(.horizontal)
    }
     
     
    
    func buttonAction( n : Int){
       
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
       
        self.i = self.i + 1
         
    }
     
     
}
 
struct Quiz1_reviews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}

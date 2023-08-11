//
//  ContentView.swift
//  Quiz app 4
//
//  Created by Omar Alshehhi on 23/07/2023.
//

import SwiftUI
 
struct ContentView: View {
     
    //var for the score
    @State var score = 0
     
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("**Welcome to the quiz game**")
                    .padding()
                    .cornerRadius(20)
                    .font(.largeTitle)
                
                NavigationLink(destination: Quiz1()) {
                    Text("START QUIZ")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .font(.largeTitle)
                }
                VStack{
                    Text("last score : \(self.score) / \(myQuiz1.count)")
                        
                        .font(.largeTitle)
                                            .onAppear(){ 
                            self.score = LoadScore(quiz: "myQuiz1")
                            
                    }
                }
            }
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

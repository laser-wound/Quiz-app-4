//
//  CircularProgressView.swift..swift
//  Quiz app 4
//
//  Created by Omar Alshehhi on 11/08/2023.
//

import SwiftUI

struct CircularProgressView_swift_: View {
    
    var progress: CGFloat
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.blue)
            
            Circle()
                .trim(from:0, to: progress)
                .stroke(style:.init(lineWidth: 20.0, lineCap: .round,lineJoin: .round))
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 270))
        }
    }
}

struct CircularProgressView_swift__Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView_swift_(progress: 0.25)
    }
}

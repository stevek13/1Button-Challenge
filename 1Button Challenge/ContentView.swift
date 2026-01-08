//
//  ContentView.swift
//  1Button Challenge
//
//  Created by Steve on 1/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .padding()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
                
                if message == message1 {
                    message = message2
                    imageName = image2
                } else {
                    message = message1
                    imageName = image1
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(Color(.orange))
            .padding()
        }
    }
}
#Preview {
    ContentView()
}

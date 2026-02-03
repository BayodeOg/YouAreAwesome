//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Adebayode Adegoke on 20/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .shadow(radius: 20)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great"
                //                let imageName1 = "image0"
                //                let imageName2 = "image1"
                //                if message == message1 {
                //                    message = message2
                //                    imageName = imageName2
                //                } else {
                //                    message = message1
                //                    imageName = imageName1
                //                }
                message = (message == message1 ? message2 : message1)
                //                imageName = (imageName == "image0" ? "image1" : "image0")
                
                
                imageName = "image\(imageNumber)" //Other way to write this imageName = "image" + Spring(imageNumber)
            
                imageNumber += 1 //Other way to write this imageNumber = imageNumber + 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

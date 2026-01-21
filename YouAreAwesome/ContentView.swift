//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Adebayode Adegoke on 20/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
           
            Spacer()
            
            HStack {
                
                Button("Awesome") {
                    message = "Awesome!"
                }
               
                Button("Great") {
                    message = "Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(Color.orange)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

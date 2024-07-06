//
//  ContentView.swift
//  Memorama
//
//  Created by Alejandro Pallares on 04/07/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🦠", "☠️"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: "👻")
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
    
    struct CardView: View {
        @State var isFaceUp = false
        var content: String
        var body: some View {
            ZStack {
                let base = RoundedRectangle(cornerRadius: 10)
                if isFaceUp {
                    base.fill(.white)
                    base.strokeBorder(lineWidth: 2)
                    
                    Text(content).font(.largeTitle)
                } else {
                    base.fill(.orange)
                }
                
            }
            
            .onTapGesture {
                isFaceUp = !isFaceUp
            }
        }
    }
}

#Preview {
    ContentView()
}

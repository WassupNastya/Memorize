//
//  CardView.swift
//  Memorize
//
//  Created by Anastasia on 01.10.2022.
//

import SwiftUI

struct CardView: View {
    var content: String
    var color: Color
    
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 16)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .foregroundColor(color)
        .aspectRatio(2/3, contentMode: .fit)
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "⛵️", color: .orange)
    }
}

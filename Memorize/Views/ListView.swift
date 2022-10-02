//
//  ListView.swift
//  Memorize
//
//  Created by Anastasia on 01.10.2022.
//

import SwiftUI

struct ListView: View {
    var list: [String]
    var counter: Int
    var color: Color
    
    var body: some View {
        ScrollView {
            let columns = [GridItem(.adaptive(minimum: 80))]
            let list = list.shuffled()
            
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(list[0..<counter], id: \.self , content: { emoji in
                    CardView(content: emoji, color: color, isFaceUp: false)
                })
            }
        }
        .padding(.horizontal)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(list: [], counter: 0, color: .blue)
    }
}

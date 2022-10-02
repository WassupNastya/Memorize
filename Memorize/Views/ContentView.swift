//
//  ContentView.swift
//  Memorize
//
//  Created by Anastasia on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum Theme {
        case vehicles, food, nature
    }
    
    var themes = [
        Theme.vehicles: ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🏍", "🛺", "🚔", "🚍", "🚘", "✈️", "🚀", "🚁", "⛵️", "🚤"],
        Theme.food: ["🍏", "🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🥦", "🥬", "🥒", "🌶"],
        Theme.nature: ["🏖", "🏝", "🏜", "🌋", "⛰", "🏔", "🗻", "🏕", "🏡", "🛤", "🌈", "🎑", "🏞", "🌅", "🌄", "🌠", "🎇", "🎆", "🌇", "🌁", "☀️", "🌤", "⛅️", "🌧"],
    ]
    
    @State var currentTheme = Theme.vehicles
    @State var currentColor = Color.orange
    @State var counter = 16
    
    var body: some View {
        VStack {
            Text("Memorize")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()


            ListView(list: themes[currentTheme] ?? [], counter: counter, color: currentColor)

            HStack {
                remove
                Spacer()
                vehicaleTheme
                Spacer()
                foodTheme
                Spacer()
                natureTheme
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding()
        }
    }
    
    var remove: some View {
        Button {
            if (counter > 0) {
                counter -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if (counter < themes[currentTheme]?.count ?? 0) {
                counter += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var vehicaleTheme: some View {
        Button {
            currentTheme = Theme.vehicles
            currentColor = Color.orange
        } label: {
            VStack {
                Image(systemName: "car")
                Text("Vehicles").font(.body)
            }
        }
        .foregroundColor(.orange)
    }
    
    var foodTheme: some View {
        Button {
            currentTheme = Theme.food
            currentColor = Color.yellow
        } label: {
            VStack {
                Image(systemName: "cup.and.saucer")
                Text("Food").font(.body)
            }
        }
        .foregroundColor(.yellow)
    }
    
    var natureTheme: some View {
        Button {
            currentTheme = Theme.nature
            currentColor = Color.green
        } label: {
            VStack {
                Image(systemName: "leaf")
                Text("Nature").font(.body)
            }
        }
        .foregroundColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

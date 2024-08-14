//
//  GameRulesPopup.swift
//  AnimalLogicNew
//
//  Created by william farhang on 2024-07-26.
//

import SwiftUI

struct GameRulesPopup: View {
    @Binding var showingRules: Bool

    var body: some View {
        VStack {
            Text("Game Rules")
                .font(.headline)
                .foregroundColor(.black)
                .padding()

            ScrollView {
                Text("""
                1. The goal is to remove all the animals from the grid.
                
                2. You can only remove an animal if it's the same type or color as the last removed animal.
                
                3. Animals can only be removed from the bottom row of the grid.
                
                4. When you remove an animal, the animals above it will move down to fill the gap.
                5. The game ends when no more animals can be removed.
                
                6. You can shuffle the animals if you're stuck, but try to use it wisely!
                """)
                .font(.subheadline)
                .foregroundColor(.black)
                .padding()
            }

            Button(action: {
                showingRules = false
            }) {
                Text("Close")
                    .font(.headline)
                    .padding()
                    .background(Color(hex: "416E53"))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .frame(width: 300, height: 400)
        .background(Color(hex: "f9edcc"))
        .cornerRadius(10)
        .shadow(radius: 20)
        .padding(40)
        .overlay(
            Button(action: {
                showingRules = false
            }) {
                Color.clear
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}



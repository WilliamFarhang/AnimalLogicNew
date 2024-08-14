//
//  OnboardingView.swift
//  AnimalLogicNew
//
//  Created by william farhang on 2024-08-12.
//
import SwiftUI

struct OnboardingView: View {
    @State private var showWelcomeView = false

    var body: some View {
        if showWelcomeView {
            WelcomeView() 
        } else {
            VStack {
                TabView {
                    OnboardingPage(imageName: "scr1", title: "Welcome to Brain Safari", description: "The goal of the game is to remove all the animals from the grid by matching them based on their shape or color.")
                    OnboardingPage(imageName: "scr2", title: "Matching Animals", description: "You can only remove animals that are the same shape or color as the last removed animal. For example, if you removed a red lion, you can only remove another lion or any animal with the color red.")
                    OnboardingPage(imageName: "scr3", title: "Removal Mechanism", description: "Animals can only be removed if they are in the bottom row or if there are no animals below them in their column. After removal, animals above will fall down to fill the gap.")
                    OnboardingPage(imageName: "scr4", title: "Winning and Losing", description: "The game ends when no more animals can be removed. You win if all animals are removed from the grid, otherwise, the game is over when no valid moves are possible.")
                }
                .tabViewStyle(PageTabViewStyle())
                
                Button(action: {
                    showWelcomeView = true
                }) {
                    Text("Skip")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hex: "416E53"))
                        .cornerRadius(8)
                }
                .padding()
            }
            .background(Color(hex: "416E53").edgesIgnoringSafeArea(.all))
        }
    }
}

struct OnboardingPage: View {
    var imageName: String
    var title: String
    var description: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .padding()

            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
        .background(Color(hex: "416E53").edgesIgnoringSafeArea(.all))
    }
}

//
//  FruitCardView.swift
//  Fructus
//
//  Created by Ayanesh Sarkar on 01/01/25.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - Properties
  @State private var isAnimating: Bool = false
  
  // MARK: - Body
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        // MARK: - Fruit: Image
        Image("blueberry")
          .resizable()
          .scaledToFit()
          .shadow(
            color: Color(
              red: 0,
              green: 0,
              blue: 0.15,
              opacity: 8
            ),
            radius: 8,
            x: 6,
            y: 8
          )
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        // MARK: - Fruit: Title
        Text("Blueberry")
          .foregroundStyle(.white)
          .font(.largeTitle.weight(.heavy))
          .shadow(
            color: Color(
              red: 0,
              green: 0,
              blue: 0,
              opacity: 0.15
            ),
            radius: 2,
            x: 2,
            y: 2
          )
        
        // MARK: - Fruit: Headline
        Text(
          "Blueberries are sweet, nutritious and widely popular fruit all over the world."
        )
          .foregroundStyle(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        // MARK: - Button: Start
        StartButtonView()
      } // VStack
    } // ZStack
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(
      minWidth: 0,
      maxWidth: .infinity,
      minHeight: 0,
      maxHeight: .infinity,
      alignment: .center
    )
    .background(
      LinearGradient(
        gradient: Gradient(
          colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]
        ),
        startPoint: .top,
        endPoint: .bottom
      )
    )
    .clipShape(.rect(cornerRadius: 12))
    .padding(.horizontal, 20)
  }
}

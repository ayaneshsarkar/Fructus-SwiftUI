//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ayanesh Sarkar on 01/01/25.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - Properties
  
  // MARK: - Body
  var body: some View {
    TabView {
      ForEach(0..<5) { _ in
        FruitCardView()
      } // Loop
    } // Tab
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

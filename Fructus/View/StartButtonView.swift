//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ayanesh Sarkar on 01/01/25.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - Properties
  
  // MARK: - Body
  var body: some View {
    Button {
      
    } label: {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule().strokeBorder(.white, lineWidth: 1.25)
      )
    } // Button
    .tint(.white)
  }
}

//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Naussica Yu on 2023/10/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30)
      .background(
        LinearGradient(
          colors: [.customGrayLight, .customGrayMedium],
          startPoint: .top, endPoint: .bottom
        )
      )
      .clipShape(RoundedRectangle(cornerRadius: 40))
  }
}

//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Naussica Yu on 2023/10/23.
//

import SwiftUI

struct CustomBackgroundView: View {
  var body: some View {
    ZStack {
      // MARK: - 3. DEPTH
      Color.customGreenDark
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .offset(y:12)
      
      // MARK: - 2. MEDIUM
      Color.customGreenLight
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .offset(y:3)
        .opacity(0.85)
      
      // MARK: - 1. SURFACE
      
      LinearGradient(
        colors: [.customGreenLight,.customGreenMedium],
        startPoint: .top, endPoint: .bottom
      )
      //.cornerRadius(40) //#deprecated#
      .clipShape(RoundedRectangle(cornerRadius: 40))
    }
  }
}

#Preview {
  CustomBackgroundView()
    .padding()
}

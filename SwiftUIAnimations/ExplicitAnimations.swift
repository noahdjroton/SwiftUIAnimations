//
//  ExplicitAnimations.swift
//  SwiftUIAnimations
//
//  Created by Djroton Noé SOSSOU on 14/02/2024.
//

import SwiftUI

struct ExplicitAnimations: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360
            }
               }
               .padding(50)
               .background(.red)
               .foregroundStyle(.white)
               .clipShape(.circle)
               .rotation3DEffect(
                    .degrees(animationAmount),
                    axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    ExplicitAnimations()
}

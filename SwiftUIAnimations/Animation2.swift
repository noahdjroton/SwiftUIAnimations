//
//  Animation2.swift
//  SwiftUIAnimations
//
//  Created by Djroton Noé SOSSOU on 14/02/2024.
//

import SwiftUI

struct Animation2: View {
    @State private var animationAmount = 1.0
    var body: some View {
        print(animationAmount)

        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(.easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)), in: 1...100)
            Spacer()
            Button("Tap Me"){
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        .padding()
    }
}

#Preview {
    Animation2()
}

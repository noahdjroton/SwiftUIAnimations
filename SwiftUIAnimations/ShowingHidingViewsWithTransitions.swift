//
//  ShowingHidingViewsWithTransitions.swift
//  SwiftUIAnimations
//
//  Created by Djroton Noé SOSSOU on 20/02/2024.
//

import SwiftUI

struct ShowingHidingViewsWithTransitions: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack {
                    Button("Tap Me") {
                        withAnimation {
                            isShowingRed.toggle()
                        }
                    }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
                }
    }
}

#Preview {
    ShowingHidingViewsWithTransitions()
}

//
//  TutorialFavoriteButton.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/03.
//

import SwiftUI

struct TutorialFavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    TutorialFavoriteButton(isSet: .constant(true))
}

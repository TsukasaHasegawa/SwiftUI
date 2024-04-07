//
//  TutorialHikeBadge.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialHikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    TutorialHikeBadge(name: "Preview Testing")
}

//
//  TutorialCircleImage.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import SwiftUI

struct TutorialCircleImage: View {
    var body: some View {
        Image(systemName: "globe")
            .resizable()
            .frame(width: 200, height: 200)
            .scaledToFill()
            .background(.white)
            .foregroundStyle(.tint)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    TutorialCircleImage()
}

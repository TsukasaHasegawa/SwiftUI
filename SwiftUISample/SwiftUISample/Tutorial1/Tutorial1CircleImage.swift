//
//  Tutorial1CircleImage.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import SwiftUI

struct Tutorial1CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    Tutorial1CircleImage()
}

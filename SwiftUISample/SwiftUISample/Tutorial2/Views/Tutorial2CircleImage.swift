//
//  Tutorial2CircleImage.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/31.
//

import SwiftUI

struct Tutorial2CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Tutorial2CircleImage(image: Image("turtlerock"))
}

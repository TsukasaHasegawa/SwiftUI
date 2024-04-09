//
//  TutorialFeatureCard.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/09.
//

import SwiftUI

struct TutorialFeatureCard: View {
    var landmark: TutorialLandmark
    
    var body: some View {
        landmark.featureImage?
            .resizable()
            .overlay {
                TutorialTextOverlay(landmark: landmark)
            }
    }
}

struct TutorialTextOverlay: View {
    var landmark: TutorialLandmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
                        startPoint: .bottom,
                        endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundStyle(.white)
    }
}
#Preview {
    TutorialFeatureCard(landmark: ModelData().features[0])
        .aspectRatio(3/2, contentMode: .fit)
}

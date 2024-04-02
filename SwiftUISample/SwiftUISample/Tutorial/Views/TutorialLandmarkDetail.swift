//
//  TutorialLandmarkDetail.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import SwiftUI

struct TutorialLandmarkDetail: View {
    var landmark: TutorialLandmark
    
    var body: some View {
        ScrollView {
            TutorialMapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            TutorialCircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom,  -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About \(landmark.park)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TutorialLandmarkDetail(landmark: landmarks[0])
}

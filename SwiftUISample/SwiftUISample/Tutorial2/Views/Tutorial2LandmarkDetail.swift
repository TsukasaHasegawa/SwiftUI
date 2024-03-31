//
//  Tutorial2LandmarkDetail.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/31.
//

import SwiftUI

struct Tutorial2LandmarkDetail: View {
    var landmark: Tutorial2Landmark
    
    var body: some View {
        ScrollView {
            Tutorial2MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            Tutorial2CircleImage(image: landmark.image)
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
    Tutorial2LandmarkDetail(landmark: landmarks[0])
}

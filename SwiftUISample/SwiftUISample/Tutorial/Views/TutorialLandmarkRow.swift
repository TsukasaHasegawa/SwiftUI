//
//  TutorialLandmarkRow.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import SwiftUI

struct TutorialLandmarkRow: View {
    var landmark: TutorialLandmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        TutorialLandmarkRow(landmark: landmarks[0])
        TutorialLandmarkRow(landmark: landmarks[1])
    }
}

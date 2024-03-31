//
//  Tutorial2LandmarkRow.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/31.
//

import SwiftUI

struct Tutorial2LandmarkRow: View {
    var landmark: Tutorial2Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        Tutorial2LandmarkRow(landmark: landmarks[0])
        Tutorial2LandmarkRow(landmark: landmarks[1])
    }
}

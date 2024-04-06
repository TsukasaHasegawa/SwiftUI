//
//  TutorialCategoryItem.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialCategoryItem: View {
    var landmark: TutorialLandmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview {
    TutorialCategoryItem(landmark: ModelData().landmarks[0])
}

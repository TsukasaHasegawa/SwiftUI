//
//  TutorialCategoryRow.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialCategoryRow: View {
    var categoryName: String
    var items: [TutorialLandmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        TutorialCategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return TutorialCategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(4))
    )
}

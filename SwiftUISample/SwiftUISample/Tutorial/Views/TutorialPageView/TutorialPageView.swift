//
//  TutorialPageView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/09.
//

import SwiftUI

struct TutorialPageView<TutorialPage: View>: View {
    var pages: [TutorialPage]
    var body: some View {
        TutorialPageViewController(pages: pages)
            .aspectRatio(3/2, contentMode: .fit)
    }
}

#Preview {
    TutorialPageView(pages: ModelData().features.map { TutorialFeatureCard(landmark: $0) })
}

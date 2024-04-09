//
//  TutorialPageView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/09.
//

import SwiftUI

struct TutorialPageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TutorialPageViewController(pages: pages, currentPage: $currentPage)
            TutorialPageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding()
        }
        .aspectRatio(3/2, contentMode: .fit)
    }
}

#Preview {
    TutorialPageView(pages: ModelData().features.map { TutorialFeatureCard(landmark: $0) })
}

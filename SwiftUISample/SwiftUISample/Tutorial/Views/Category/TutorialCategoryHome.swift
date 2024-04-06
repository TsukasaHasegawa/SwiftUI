//
//  TutorialCategoryHome.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialCategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Sleelct a Landmark")
        }
    }
}

#Preview {
    TutorialCategoryHome()
}

//
//  TutorialCategoryHome.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialCategoryHome: View {
    @Environment(ModelData.self) var modelData
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
        } detail: {
            Text("Sleelct a Landmark")
        }
    }
}

#Preview {
    TutorialCategoryHome()
        .environment(ModelData())
}

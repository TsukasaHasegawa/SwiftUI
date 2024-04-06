//
//  TutorialContentView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import SwiftUI

struct TutorialContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            TutorialCategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            TutorialLandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    TutorialContentView()
        .environment(ModelData())
}

//
//  TutorialCategoryHome.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialCategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    TutorialCategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                TutorialProfileHost()
                    .environment(modelData)
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

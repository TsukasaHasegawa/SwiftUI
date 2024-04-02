//
//  TutorialLandmarkList.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import SwiftUI

struct TutorialLandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [TutorialLandmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        TutorialLandmarkDetail(landmark: landmark)
                    } label: {
                        TutorialLandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    TutorialLandmarkList()
}

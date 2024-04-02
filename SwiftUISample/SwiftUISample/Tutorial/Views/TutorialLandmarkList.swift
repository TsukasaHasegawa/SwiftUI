//
//  TutorialLandmarkList.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import SwiftUI

struct TutorialLandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    TutorialLandmarkDetail(landmark: landmark)
                } label: {
                    TutorialLandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    TutorialLandmarkList()
}

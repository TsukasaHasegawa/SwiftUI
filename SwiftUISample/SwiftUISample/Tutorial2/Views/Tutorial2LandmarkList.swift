//
//  Tutorial2LandmarkList.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/31.
//

import SwiftUI

struct Tutorial2LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    Tutorial2LandmarkDetail(landmark: landmark)
                } label: {
                    Tutorial2LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    Tutorial2LandmarkList()
}

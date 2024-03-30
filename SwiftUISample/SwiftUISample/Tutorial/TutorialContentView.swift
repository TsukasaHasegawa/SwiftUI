//
//  TutorialContentView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

struct TutorialContentView: View {
    var body: some View {
        VStack {
            TutorialMapView()
                .frame(height: 300)
            TutorialCircleImage()
                .offset(y: -100)
                .padding(.bottom,  -100)
            VStack(alignment: .leading) {
                Text("Turtle Rcok")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    TutorialContentView()
}

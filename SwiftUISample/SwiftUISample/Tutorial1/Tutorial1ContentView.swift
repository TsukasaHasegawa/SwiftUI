//
//  Tutorial1ContentView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

/// Creating and combining views
///
/// https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
struct Tutorial1ContentView: View {
    var body: some View {
        VStack {
            Tutorial1MapView()
                .frame(height: 300)
            Tutorial1CircleImage()
                .offset(y: -130)
                .padding(.bottom,  -130)
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
    Tutorial1ContentView()
}

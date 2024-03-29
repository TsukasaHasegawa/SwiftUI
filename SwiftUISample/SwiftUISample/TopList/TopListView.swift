//
//  TopListView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/29.
//

import SwiftUI

struct TopListView: View {
    var body: some View {
        NavigationView {
            List(TopLIstContent.allCases, id: \.title) { content in
                NavigationLink(destination: content.view) {
                    HStack {
                        Text(content.title)
                        Spacer()
                    }
                }
                .contentShape(Rectangle())
            }
            .navigationBarTitle("Top List", displayMode: .inline)
        }
    }
}

#Preview {
    TopListView()
}

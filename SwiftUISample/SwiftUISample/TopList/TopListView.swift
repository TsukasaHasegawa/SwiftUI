//
//  TopListView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/29.
//

import SwiftUI

struct TopListView: View {
    @State private var showWebView = false
    var body: some View {
        NavigationView {
            List(TopListContent.allCases, id: \.title) { content in
                if content.isModal {
                    Button {
                        showWebView = true
                    } label: {
                        HStack {
                            Text(content.title)
                            Spacer()
                        }
                    }
                    .contentShape(Rectangle())
                } else {
                    NavigationLink(destination: content.view) {
                        HStack {
                            Text(content.title)
                            Spacer()
                        }
                    }
                    .contentShape(Rectangle())
                }
            }
            .navigationBarTitle("Top List", displayMode: .inline)
            .sheet(isPresented: $showWebView) {
                WebViewControllerRepresentable()
            }
        }
    }
}

#Preview {
    TopListView()
}

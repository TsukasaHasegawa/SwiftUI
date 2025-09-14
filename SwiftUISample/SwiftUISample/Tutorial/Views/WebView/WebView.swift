//
//  WebView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2025/09/14.
//

import SwiftUI

struct WebView: View {
    @State private var showSheet = false
    @State private var showFullScreen = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("WebView as Sheet") {
                showSheet = true
                print("present state check - showSheet: true")
            }
            .sheet(isPresented: $showSheet, onDismiss: dismissWebViewController) {
                WebViewControllerRepresentable(urlString: webViewURLString)
            }
            
            Button("WebView as FullScreen") {
                showFullScreen = true
                print("present state check - fullScreen: true")
            }
            .fullScreenCover(isPresented: $showFullScreen, onDismiss: dismissWebViewController) {
                WebViewControllerRepresentable(urlString: webViewURLString)
            }
        }
    }
    
    private func dismissWebViewController() {
        if showSheet {
            print("present state check - showSheet: true")
        } else {
            print("present state check - showSheet: false")
        }
        if showFullScreen {
            print("present state check - fullScreen: true")
        } else {
            print("present state check - fullScreen: false")
        }
        print("present state check - ===================")
    }
}

#Preview {
    WebView()
}

//
//  WebViewControllerRepresentable.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2025/08/07.
//

import SwiftUI

struct WebViewControllerRepresentable: UIViewControllerRepresentable {
    let urlString: String

    func makeUIViewController(context: Context) -> WebViewController {
        // ビューコントローラーオブジェクトを作成し、その初期状態を設定します。
        return WebViewController(urlString: urlString)
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // SwiftUI からの新しい情報で指定したビューコントローラの状態を更新
    }
}

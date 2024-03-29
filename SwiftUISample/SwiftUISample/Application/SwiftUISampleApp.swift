//
//  SwiftUISampleApp.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/29.
//

import SwiftUI

/// @mainはアプリのentry pointを示している。
@main
struct SwiftUISampleApp: App {
    /// Opaque Result Type - some
    ///
    /// - note: 内部実装を過剰に公開することを避ける
    /// - note: パフォーマンスの低下を避ける
    /// - 下記リンクで非常に詳しく解説されている。
    ///   - https://qiita.com/koher/items/338d2f2d0c4731e3508f
    var body: some Scene {
        WindowGroup {
            TopListView()
        }
    }
}

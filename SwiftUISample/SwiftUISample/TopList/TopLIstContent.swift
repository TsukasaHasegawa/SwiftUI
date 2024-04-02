//
//  TopLIstContent.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

enum TopLIstContent: String, CaseIterable {
    case tutorial
    
    var title: String {
        switch self {
        case .tutorial:
            return "Tutorial"
        }
    }
    
    /// @ViewBuilder
    ///
    /// - note: @ViewBuilder属性はクロージャから階層構造のビューを構築するカスタムパラメータ属性。
    /// - 公式リファレンス
    ///   - https://developer.apple.com/documentation/swiftui/viewbuilder
    /// - 参考になる記事
    ///   - https://appdev-room.com/swift-viewbuilder
    @ViewBuilder
    var view: some View {
        switch self {
        case .tutorial:
            TutorialLandmarkList()
        }
    }
}

protocol TopListContentView: View {}

//
//  TopLIstContent.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

enum TopLIstContent: String, CaseIterable {
    case tutorialLandmark
    case tutorialHike
    case tutorialCategory
    
    var title: String {
        switch self {
        case .tutorialLandmark:
            return "Tutorial1 - LandMark"
        case .tutorialHike:
            return "Tutorial2 - Hike"
        case .tutorialCategory:
            return "Tutorial3 - Category"
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
        case .tutorialLandmark:
            TutorialLandmarkList()
                .environment(ModelData())
        case .tutorialHike:
            TutorialHikeView(hike: ModelData().hikes[0])
                .padding()
            Spacer()
        case .tutorialCategory:
            TutorialCategoryHome()
                .environment(ModelData())
        }
    }
}

protocol TopListContentView: View {}

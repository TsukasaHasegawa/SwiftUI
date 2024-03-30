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
    
    var view: some View {
        switch self {
        case .tutorial:
            TutorialContentView()
        }
    }
}

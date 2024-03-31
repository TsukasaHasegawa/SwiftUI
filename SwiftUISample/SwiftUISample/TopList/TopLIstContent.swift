//
//  TopLIstContent.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

enum TopLIstContent: String, CaseIterable {
    case tutorial1
    case tutorial2
    
    var title: String {
        switch self {
        case .tutorial1:
            return "Creating and combining views"
        case .tutorial2:
            return "Building lists and navigation"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .tutorial1:
            Tutorial1ContentView()
        case .tutorial2:
            Tutorial2LandmarkList()
        }
    }
}

protocol TopListContentView: View {}

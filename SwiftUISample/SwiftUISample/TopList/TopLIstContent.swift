//
//  TopLIstContent.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

enum TopLIstContent: String, CaseIterable {
    case first
    
    var title: String {
        switch self {
        case .first:
            return "First SwiftUI View"
        }
    }
    
    var view: some View {
        switch self {
        case .first:
            FirstView()
        }
    }
}

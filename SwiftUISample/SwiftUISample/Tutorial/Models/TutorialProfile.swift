//
//  TutorialProfile.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import Foundation

struct TutorialProfile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = TutorialProfile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}

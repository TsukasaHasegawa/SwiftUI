//
//  TutorialProfileHost.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/07.
//

import SwiftUI

struct TutorialProfileHost: View {
    @State private var draftProfile = TutorialProfile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TutorialProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

#Preview {
    TutorialProfileHost()
}

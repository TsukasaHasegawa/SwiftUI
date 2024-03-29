//
//  FirstView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import Foundation
import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, SwiftUI!")
                .font(.title)
            
        }
        .padding()
    }
}

#Preview {
    FirstView()
}

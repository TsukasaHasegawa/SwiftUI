//
//  TutorialMapView.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/03/30.
//

import SwiftUI
import MapKit

struct TutorialMapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
                           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    TutorialMapView()
}

//
//  TutorialModelData.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/02.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [TutorialLandmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    var profile = TutorialProfile.default
    
    var features: [TutorialLandmark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [TutorialLandmark]] {
        Dictionary (
            grouping: landmarks,
            by: {$0.category.rawValue}
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

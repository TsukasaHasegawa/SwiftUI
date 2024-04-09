//
//  TutorialPageViewController.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2024/04/09.
//

import SwiftUI
import UIKit

struct TutorialPageViewController<TutorialPage: View>: UIViewControllerRepresentable {
    var pages: [TutorialPage]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll,
                                                      navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        let rootView = pages[0]
        let hostingController = UIHostingController(rootView: rootView)
        pageViewController.setViewControllers([hostingController],
                                              direction: .forward,
                                              animated: true)
    }
}

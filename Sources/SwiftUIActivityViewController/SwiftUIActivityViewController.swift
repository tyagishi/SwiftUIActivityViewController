//
//  SwiftUIActivityViewController.swift
//  ShareButtonInSwiftUI
//
//  Created by Tomoaki Yagishita on 2020/08/29.
//  Copyright © 2020 SmallDeskSoftware. All rights reserved.
//

import Foundation
import SwiftUI

public struct SwiftUIActivityViewController: UIViewControllerRepresentable {
    var items: [UIActivityItemSource] = []
    var activities: [UIActivity]? = nil
    
    public init(items:[UIActivityItemSource], activities:[UIActivity]?) {
        self.items = items
        self.activities = activities
    }
    
    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let viewController = UIActivityViewController(activityItems: items, applicationActivities: activities)
        return viewController
    }
    
    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        print("updateUIViewController called")
    }
}

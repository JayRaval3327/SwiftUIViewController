//
//  SwiftUIViewController.swift
//  SwiftUIViewController
//
//  Created by Jay Raval on 2024-04-03.
//

import SwiftUI

class SwiftUIViewController<ChildView: View>: UIViewController {
    
    var childView: ChildView?
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        if let childView = self.childView {
            self.embedChildView(childView)
        }
    }
}

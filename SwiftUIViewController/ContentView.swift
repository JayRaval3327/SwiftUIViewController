//
//  ContentView.swift
//  SwiftUIViewController
//
//  Created by Jay Raval on 2024-04-03.
//

import SwiftUI

struct ContentView: View {
    
    private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("Hello, World!")
            .foregroundStyle(.black)
    }
}

final class ViewModel {
    
}

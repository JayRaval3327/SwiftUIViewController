//
//  ViewController.swift
//  SwiftUIViewController
//
//  Created by Jay Raval on 2024-04-03.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapDetail(_ sender: Any) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {
            fatalError("Failed to load DetailsViewController from storyboard.")
        }
        
        viewController.viewModel = ViewModel()
        navigationController?.pushViewController(viewController, animated: true)
    }
}


class DetailsViewController: SwiftUIViewController<ContentView> {
    
    var viewModel: ViewModel! {
        didSet {
            self.childView = ContentView(viewModel: viewModel)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

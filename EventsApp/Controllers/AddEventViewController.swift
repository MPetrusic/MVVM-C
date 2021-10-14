//
//  AddEventViewController.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import UIKit

class AddEventViewController: UIViewController {
    
    var viewModel: AddEventViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        viewModel.viewDidDisappear()
    }
    
    deinit {
        print("deinit from the add event vc")
    }

}

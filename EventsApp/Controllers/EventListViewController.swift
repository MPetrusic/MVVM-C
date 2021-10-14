//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import UIKit

class EventListViewController: UIViewController {
    
    var viewModel: EventListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(addEventButtonTapped))
        barButtonItem.tintColor = .blue
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func addEventButtonTapped() {
        viewModel.addEventTapped()
    }

}

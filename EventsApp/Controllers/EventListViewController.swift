//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import UIKit

class EventListViewController: UIViewController {
    
    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "EventListViewController") as! EventListViewController
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(rightBarButtonTapped))
        barButtonItem.tintColor = .blue
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func rightBarButtonTapped() {
        print("tapped")
    }

}

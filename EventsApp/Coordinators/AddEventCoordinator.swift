//
//  AddEventCoordinator.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    var parentCoordinator: EventListCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let modalNavigationController =  UINavigationController()
        let addEventViewController: AddEventViewController = .instantiate()
        modalNavigationController.setViewControllers([addEventViewController], animated: false)
        let addEventViewModel = AddEventViewModel()
        addEventViewModel.coordinator = self
        addEventViewController.viewModel = addEventViewModel
        navigationController.present(modalNavigationController, animated: true, completion: nil)
    }
    
    func didFinishAddEvent() {
        parentCoordinator?.childDidFinish(self)
    }
    
    deinit {
        print("deinit from the add event coordinator")
    }
}

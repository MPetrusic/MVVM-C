//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    deinit {
        print("deinit from the add event model")
    }
}

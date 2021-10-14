//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func addEventTapped() {
        coordinator?.startAddEvent()
    }
}

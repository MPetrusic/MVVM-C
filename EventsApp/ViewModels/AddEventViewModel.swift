//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import Foundation
import UIKit

final class AddEventViewModel {
    
    let title = "Add"
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
    }
    
    private(set) var cells: [AddEventViewModel.Cell] = []
    var coordinator: AddEventCoordinator?
    
    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name", type: .text, onCellUpdate: {})),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Date", subtitle: "", placeholder: "Select a date", type: .date, onCellUpdate: { [weak self] in
                self?.onUpdate()
            })),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Background", subtitle: "", placeholder: "", type: .image, onCellUpdate: { [weak self] in
                self?.onUpdate()
            }))
        ]
        onUpdate()
    }
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    func tappedDone() {
        print("Tapped Done, I will save model now.")
        // save model to core data
        // tell coordinator to dismiss vc
    }
    
    func updateCell(indexPath: IndexPath, subtitle: String) {
        switch cells[indexPath.row] {
        case .titleSubtitle(let titleSubtitleCellViewModel):
            titleSubtitleCellViewModel.update(subtitle)
        }
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
    
    deinit {
        print("deinit from the add event model")
    }
}

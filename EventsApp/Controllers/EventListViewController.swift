//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import UIKit

class EventListViewController: UIViewController {
    
    var viewModel: EventListViewModel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        viewModel.onUpdate = { [weak self] in
            self?.tableView.reloadData()
        }
        viewModel.viewDidLoad()
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(addEventButtonTapped))
        barButtonItem.tintColor = .blue
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.dataSource = self
        tableView.register(EventCell.self, forCellReuseIdentifier: "EventCell")
    }
    
    @objc func addEventButtonTapped() {
        viewModel.addEventTapped()
    }
}

extension EventListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch viewModel.cell(at: indexPath) {
        case .event(let eventCellViewModel):
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventCell
            cell.update(with: eventCellViewModel)
            return cell
        }
    }
    
    
}

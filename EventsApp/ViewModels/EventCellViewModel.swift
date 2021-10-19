//
//  EventCellViewModel.swift
//  EventsApp
//
//  Created by Milos Petrusic on 19.10.21..
//

import UIKit

struct EventCellViewModel {
    var yearText: String {
        "1 year"
    }
    
    var monthText: String {
        "2 months"
    }
    
    var weekText: String {
        "2 weeks"
    }
    
    var dayText: String {
        "2 days"
    }
    
    var dateText: String {
        "24. April 2023"
    }
    
    var eventName: String {
        "London"
    }
    
    var backgroundImage: UIImage {
        #imageLiteral(resourceName: "newyear")
    }
    
}

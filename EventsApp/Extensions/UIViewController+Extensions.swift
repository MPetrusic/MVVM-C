//
//  UIViewController+Extensions.swift
//  EventsApp
//
//  Created by Milos Petrusic on 14.10.21..
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}

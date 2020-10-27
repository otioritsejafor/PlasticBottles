//
//  UIViewControllerExtensions.swift
//  PlasticBottles
//
//  Created by Oti Oritsejafor on 10/27/20.
//

#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIViewController {
    /// Displays an alert with a dismiss action on any UIViewController subclass. Uses UIAlertController to show an alert
    ///
    /// - Parameters:
    /// - title: title of the alert
    /// - message: message of the alert
    /// - dismiss: title of the dismiss button
    
    @discardableResult
    func showSimpleAlert(title: String? = nil, message: String, dismiss: String? = "OK") -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: dismiss, style: .cancel))
        
        present(alertController, animated: true, completion: nil)
        return alertController
    }
}

#endif

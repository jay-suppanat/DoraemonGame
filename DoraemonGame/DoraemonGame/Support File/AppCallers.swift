//
//  AppCallers.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import Foundation
import UIKit

class AppCallers: UIViewController {

  // MARK: Alert
  func showCommandAlert(title: String, message: String, buttonTitle: String) -> UIAlertController {
    let alert = UIAlertController(
        title: "Your Card: \(title)",
        message: message,
        preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: buttonTitle, style: UIAlertAction.Style.default, handler: nil))
    return alert
  }
}

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

//  func setCommandAlert() -> UIAlertController {
//    let alert = UIAlertController(
//        title: "Set New Command",
//        message: "a",
//        preferredStyle: .alert)
//    alert.addTextField { (textField) in textField.placeholder = "New Command" }
//
//    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
//      print("Cancel")
//    }
//
//    let okAction = UIAlertAction(title: "OK", style: .default) { action in
//      guard let textField = alert.textFields?.first else { return }
//      guard let enteredText = textField.text else { return }
//      print(enteredText)
//    }
//
//    alert.addAction(cancelAction)
//    alert.addAction(okAction)
//    return alert
//  }
}

//
//  CommandViewController.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import UIKit

class CommandViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      self.setupNavigationBar()
      self.setupTableView()
      self.applyTheme()
    }

// MARK: Internal

  @IBOutlet weak var tableView: UITableView!

  var commandArray: [String] = Constant.Command.commandArray


// MARK: Theme and UserInterface

  func applyTheme() {
    self.tableView.backgroundColor = .black
    self.view.backgroundColor = .black
  }

  func setupNavigationBar() {
    if let navigationBar = navigationController?.navigationBar {
               let titleAttributes: [NSAttributedString.Key: Any] = [
                   .foregroundColor: UIColor.white, 
               ]
               navigationBar.titleTextAttributes = titleAttributes
           }
    self.title = Constant.Title.commandTitle

  }

  func setupTableView() {
    self.tableView.dataSource = self
    self.tableView.delegate = self
    self.tableView.register(CommandTableViewCell.nib, forCellReuseIdentifier: CommandTableViewCell.identifier)
  }

}

// MARK: UITableViewDelegate

extension CommandViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let alert = UIAlertController(
        title: "Set New Command",
        message: "",
        preferredStyle: .alert)
    alert.addTextField { (textField) in textField.placeholder = "New Command" }

    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] action in
               if let textField = alert.textFields?.first,
                  let newText = textField.text {
                 switch indexPath.row {
                 case 0:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 1:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 2:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 3:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 4:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 5:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 6:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 7:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 8:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 9:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 10:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 11:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 case 12:
                   UserDefault.shared.setCommand2(command2: newText)
                   self?.commandArray[indexPath.row] = newText
                   self?.tableView.reloadRows(at: [indexPath], with: .automatic)
                 default:
                   print("🚨 Change Command Error")
                 }
               }
           }

    alert.addAction(cancelAction)
    alert.addAction(okAction)
    self.present(alert, animated: true)
  }
}

// MARK: UITableViewDataSource

extension CommandViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Constant.Wording.cardArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: CommandTableViewCell.identifier, for: indexPath) as! CommandTableViewCell
    cell.setupData(card: Constant.Wording.cardArray[indexPath.row], command: commandArray[indexPath.row])
    return cell
  }
  

}


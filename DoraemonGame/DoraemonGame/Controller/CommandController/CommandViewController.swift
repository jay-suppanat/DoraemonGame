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

}

// MARK: UITableViewDataSource

extension CommandViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Constant.Wording.cardArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: CommandTableViewCell.identifier, for: indexPath) as! CommandTableViewCell
    cell.setupData(card: Constant.Wording.cardArray[indexPath.row])
    return cell
  }
  

}


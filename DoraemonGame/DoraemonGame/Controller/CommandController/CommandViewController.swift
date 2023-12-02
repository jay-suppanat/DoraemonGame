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
    }

// MARK: Internal

  @IBOutlet weak var tableView: UITableView!
  

// MARK: Theme and UserInterface

  func setupNavigationBar() {
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
    return 13
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: CommandTableViewCell.identifier, for: indexPath) as! CommandTableViewCell
    return cell
  }
  

}


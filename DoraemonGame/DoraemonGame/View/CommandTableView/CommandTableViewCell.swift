//
//  CommandTableViewCell.swift
//  DoraemonGame
//
//  Created by Suppanat Chinthumrucks on 3/12/2566 BE.
//

import UIKit

class CommandTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
      self.setupCell()
    }

  // MARK: Internal

    static var identifier: String {
        String(describing: self)
    }

    static var nib: UINib {
        UINib(nibName: identifier, bundle: nil)
    }

  @IBOutlet weak var cardView: UIView!
  @IBOutlet weak var cardLabel: UILabel!
  @IBOutlet weak var commandLabel: UILabel!
  
  // MARK: UserInterface

  func setupCell() {
    self.contentView.backgroundColor = .black
    self.cardView.layer.cornerRadius = 20
    self.cardView.backgroundColor = .systemGray5
    self.cardView.clipsToBounds = true
    self.cardLabel.textAlignment = .center
    self.commandLabel.textColor = .white
  }

  func setupData(card: String, command: String) {
    self.cardLabel.text = card
    self.commandLabel.text = command
  }

}

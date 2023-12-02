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
  @IBOutlet weak var commandTextField: UITextField!

  // MARK: UserInterface

  func setupCell() {
    self.contentView.backgroundColor = .black
    self.cardView.layer.cornerRadius = 22
    self.cardView.backgroundColor = .systemGray5
    self.cardView.clipsToBounds = true
    self.cardLabel.textAlignment = .center
  }

  func setupData(card: String) {
    self.cardLabel.text = card
  }

}

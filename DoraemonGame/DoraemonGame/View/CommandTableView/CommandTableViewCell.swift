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
    }

  // MARK: Internal

    static var identifier: String {
        String(describing: self)
    }

    static var nib: UINib {
        UINib(nibName: identifier, bundle: nil)
    }


}

//
//  BorderButton.swift
//  SwooshApp
//
//  Created by Lucas Castelan Prado on 09-12-20.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}

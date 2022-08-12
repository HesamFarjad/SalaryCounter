//
//  BorderButton.swift
//  app
//
//  Created by Hesam Farjad on 10/08/22.
//

import UIKit

class BorderButton: UIButton {


        override func awakeFromNib() {
            super.awakeFromNib()
            
            layer.borderWidth = 2.5
            layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            layer.cornerRadius = 5.0
            
        }


}

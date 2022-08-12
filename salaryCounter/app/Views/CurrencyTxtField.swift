//
//  CurrencyTxtField.swift
//  app
//
//  Created by Hesam Farjad on 09/08/22.
//

import UIKit

//@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2 - size/2), width: size, height: size))
        currencyLbl.backgroundColor = UIColor.lightGray
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.white
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }

//    override func prepareForInterfaceBuilder() {
//        costomizeView()
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        costomizeView()
        
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 0.5
    }
    
    func costomizeView() {
        
        backgroundColor = UIColor(red: 25.0/255.0, green: 25.0/255.0, blue: 25.0/255.0, alpha: 25.0/255.0)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
//        if placeholder == nil{
//            placeholder = " "
//        }
//
        if let p = placeholder{
            let place = NSAttributedString(string: p , attributes: [.foregroundColor: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
}

//
//  ViewController.swift
//  app
//
//  Created by Hesam Farjad on 09/08/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!

    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true

    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
    
    

}


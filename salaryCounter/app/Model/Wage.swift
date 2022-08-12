//
//  wage.swift
//  app
//
//  Created by Hesam Farjad on 09/08/22.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double , andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}

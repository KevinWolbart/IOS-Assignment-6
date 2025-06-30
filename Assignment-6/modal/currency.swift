//
//  currency.swift
//  Assignment-6
//
//  Created by Kevin Wolbart on 6/29/25.
//

import Foundation


struct Currency {
    var amount: Int = 0
    
    var euroConv: Float = 0.85
    var isEuro: Bool = false
    var euroAmount: String = ""
    
    var pesoConv: Float = 18.85
    var isPeso: Bool = false
    var pesoAmount: String = ""
    
    var francConv: Float = 0.8
    var isFranc: Bool = false
    var francAmount: String = ""
    
    var poundConv: Float = 0.73
    var isPound: Bool = false
    var poundAmount: String = ""
    
    mutating func setAmount(_ input: String){
        amount = Int(input)!
    }
    
    mutating func getEuroVal() -> String{
        return euroAmount
    }
    
    mutating func getPesoVal() -> String{
        return String(pesoAmount)
    }
    
    mutating func getFrancVal() -> String{
        return String(francAmount)
    }
    
    mutating func getPoundVal() -> String{
        return String(poundAmount)
    }
    
    mutating func getUsdVal() -> String{
        return String(amount)
    }
    
    mutating func checkInput(_ amount: String) -> Bool{
        if Int(amount) != nil {
            return true
        } else {
            return false
        }
    }

    mutating func setEuro (_ isChecked: Bool){
        if isChecked == true {
            isEuro = true
        } else {
            isEuro = false
        }
    }
    
    mutating func setPeso (_ isChecked: Bool){
        if isChecked == true {
            isPeso = true
        } else {
            isPeso = false
        }
    }
    
    mutating func setFranc (_ isChecked: Bool){
        if isChecked == true {
            isFranc = true
        } else {
            isFranc = false
        }
    }
    
    mutating func setPound (_ isChecked: Bool){
        if isChecked == true {
            isPound = true
        } else {
            isPound = false
        }
    }
    
    mutating func calculateAmount  (_ input: String) {
        if isEuro {
            euroAmount = String(Float(amount) * euroConv)
        } else {
            euroAmount = ""
        }
        if isPeso {
            pesoAmount = String(Float(amount) * pesoConv)
        } else {
            pesoAmount = ""
        }
        if isFranc {
            francAmount = String(Float(amount) * francConv)
        } else {
            francAmount = ""
        }
        if isPound {
            poundAmount = String(Float(amount) * poundConv)
        } else {
            poundAmount = ""
        }
    }
}


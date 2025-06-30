//
//  ViewController.swift
//  Assignment-6
//
//  Created by Kevin Wolbart on 6/29/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdInput: UITextField!
    
    var cur = Currency()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        cur.setEuro(sender.isOn)
    }
    
    @IBAction func pesoSwitch(_ sender: UISwitch) {
        cur.setPeso(sender.isOn)
    }
    
    @IBAction func francSwitch(_ sender: UISwitch) {
        cur.setFranc(sender.isOn)
    }
    
    @IBAction func poundSwitch(_ sender: UISwitch) {
        cur.setPound(sender.isOn)
    }
    
    @IBAction func convertButtonPress(_ sender: UIButton) {
        if cur.checkInput(usdInput.text!) {
            cur.setAmount(usdInput.text!)
            cur.calculateAmount(usdInput.text!)
            self.performSegue(withIdentifier: "toConverted", sender: self)
        } else {
            print("Error not a valid int!")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverted" {
            let navigation = segue.destination as! convertedView
            navigation.euroVal = cur.getEuroVal()
            navigation.pesoVal = cur.getPesoVal()
            navigation.francVal = cur.getFrancVal()
            navigation.poundVal = cur.getPoundVal()
            navigation.usdVal = cur.getUsdVal()
            
        }
    }
}


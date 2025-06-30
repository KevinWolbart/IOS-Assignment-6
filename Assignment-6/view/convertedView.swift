//
//  convertedView.swift
//  Assignment-6
//
//  Created by Kevin Wolbart on 6/29/25.
//

import UIKit

class convertedView: UIViewController {
    
    var euroVal = ""
    var pesoVal = ""
    var francVal = ""
    var poundVal = ""
    var usdVal = ""

    @IBOutlet weak var usdAmount: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var francLabel: UILabel!
    
    @IBOutlet weak var poundLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        euroLabel.text = euroVal

        pesoLabel.text = pesoVal

        francLabel.text = francVal

        poundLabel.text = poundVal
        
        usdAmount.text = usdVal
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

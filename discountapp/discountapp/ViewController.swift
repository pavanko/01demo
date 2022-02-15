//
//  ViewController.swift
//  discountapp
//
//  Created by Koppuravuri,Pavan Kumar on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amt: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    
    
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: UIButton) {
        var amount = Double(amt.text!)
        var dis = Double(discount.text!)
        
        var final = amount! - amount! * dis!/100
        output.text = "The Price after Discount is \(final)"
        
    }
    
}


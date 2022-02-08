//
//  ViewController.swift
//  voweltester
//
//  Created by Koppuravuri,Pavan Kumar on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func submitbutton(_ sender: UIButton) {
        var num = Int (inputtext.text!)
        if (num! % 2 == 0){
            display.text = "\(num!)  is even number"
        }
            else
            {
                display.text = " \(num!)  is odd number"
        }
        
    }
    
    
    @IBOutlet weak var display: UILabel!
}


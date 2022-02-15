//
//  ViewController.swift
//  VOWEL TEXTER
//
//  Created by Koppuravuri,Pavan Kumar on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textoutlet: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Buttonclicked(_ sender: UIButton) {
        // read the text
        var enteredText=Textoutlet.text!
        //check it is vowel or not
        if (enteredText.contains("a") ||
           enteredText.contains("e") ||
           enteredText.contains("i") ||
           enteredText.contains("o") ||
           enteredText.contains("u")){
            DisplayLabel.text = "The text conatins vowels"
        }
         else{
            DisplayLabel.text = "There are no vowels in the text"
        }
            
        }
            
    }
    


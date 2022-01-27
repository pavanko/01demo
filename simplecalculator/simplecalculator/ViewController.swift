//
//  ViewController.swift
//  simplecalculator
//
//  Created by Koppuravuri,Pavan Kumar on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func six(_ sender: UIButton) {
        output.text = output.text! + "6"
        if operand1 == -1.1 {
            operand1 = 6
        }else{
            operand2 = 6
        }
    }
    
    @IBAction func nine(_ sender: UIButton) {
        output.text = output.text! + "9"
        if operand2 == -1.1 {
            operand2 = 9
        }else{
            operand1 = 9
        }
    }
    
    @IBAction func plus(_ sender: UIButton) {
        output.text = output.text! + "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
    @IBAction func equal(_ sender: UIButton) {
        output.text = output.text! + "="
        if(calcOperator == "+"){
            output.text = output.text! + "\(operand1+operand2)"
        }
    }
}


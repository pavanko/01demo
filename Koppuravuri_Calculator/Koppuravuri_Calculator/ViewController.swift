//
//  ViewController.swift
//  Koppuravuri_Calculator
//
//  Created by Koppuravuri,Pavan Kumar on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    var var1:Double = -1.1
    var var2:Double = 0
    var result:Double = 0
    var operation = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var displaylabel: UILabel!
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displaylabel.text=""
        var1 = 0
        var2 = 0
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displaylabel.text=""
    }
    
    @IBAction func buttonplusorminus(_ sender: UIButton) {
        if(operation=="+")
        {
            operation = "-"
        }
        else{
            operation = "+"
        }
        displaylabel.text="\(operation)"
    }
    
    @IBAction func buttonDivison(_ sender: UIButton) {
        operation = "/"
        var1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func button7(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "9"
    }
    
    @IBAction func button4(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "5"
    }
    
    @IBAction func button6(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "6"
    }
    
    @IBAction func button1(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "3"
    }
    
    @IBAction func button0(_ sender: UIButton) {
        displaylabel.text = displaylabel.text! + "0"
    }
    
    
    @IBAction func buttonmultiply(_ sender: UIButton) {
        operation = "*"
        var1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttonminus(_ sender: UIButton) {
        operation = "-"
        var1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttonplus(_ sender: UIButton) {
        operation = "+"
        var1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttonmoddividson(_ sender: UIButton) {
        operation = "%"
        var1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttondot(_ sender: UIButton) {
        if(!displaylabel.text!.contains(".")){
            displaylabel.text = displaylabel.text! + "."
            return
        }
    }
    
    @IBAction func buttonequal(_ sender: UIButton) {
        var2 = Double(displaylabel.text!)!
        switch operation {
        case "+":
            result = var1+var2
            displaylabel.text = String(result)
        case "-":
            result = var1-var2
            displaylabel.text = String(result)
        case "*":
            result = var1*var2
            displaylabel.text = String(result)
        case "/":
            result = var1/var2
            if(var2==0){
                displaylabel.text = "error"
            }
            else{
                let newresult = round(result*1000000)/1000000
            displaylabel.text = String(newresult)
                }
        case "%":
            result = var1.truncatingRemainder(dividingBy: var2)
            let new = round(result*10)/10
            displaylabel.text = String(new)
            
        default:
            displaylabel.text = "ERROR"
        }
        
        let splitresponse = displaylabel.text!.components(separatedBy: ".")
    }
    
    
    
}



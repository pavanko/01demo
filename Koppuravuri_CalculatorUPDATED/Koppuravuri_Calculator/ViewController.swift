//
//  ViewController.swift
//  Koppuravuri_Calculator
//
//  Created by Koppuravuri,Pavan Kumar on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    var v1:Double = -1.1
    var v2:Double = 0
    var result:Double = 0
    var operation = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var displaylabel: UILabel!
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displaylabel.text=""
        v1 = 0
        v2 = 0
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displaylabel.text=""
    }
    
    @IBAction func buttonplusorminus(_ sender: UIButton) {
        if(displaylabel.text!.first == "-")
        {
            displaylabel.text!.removeFirst()
        }
        else{
            displaylabel.text = "-\(displaylabel.text!)"
        }
        //displaylabel.text="\(operation)"
    }
    
    @IBAction func buttonDivison(_ sender: UIButton) {
        operation = "/"
        v1 = Double(displaylabel.text!)!
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
        v1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttonminus(_ sender: UIButton) {
        
        if(!displaylabel.text!.isEmpty) {
        v1 = Double(displaylabel.text!)!
            operation = "-"
            displaylabel.text=""
        }
        else{
            displaylabel.text="-"
        }
    }
    
    @IBAction func buttonplus(_ sender: UIButton) {
        operation = "+"
        v1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttonmoddividson(_ sender: UIButton) {
        operation = "%"
        v1 = Double(displaylabel.text!)!
        displaylabel.text=""
    }
    
    @IBAction func buttondot(_ sender: UIButton) {
        if(!displaylabel.text!.contains(".")){
            displaylabel.text = displaylabel.text! + "."
            return
        }
    }
    
    @IBAction func buttonequal(_ sender: UIButton) {
        v2 = Double(displaylabel.text!)!
        switch operation {
        case "+":
            result = v1+v2
            displaylabel.text = String(result)
        case "-":
            result = v1-v2
            displaylabel.text = String(result)
        case "*":
            result = v1*v2
            displaylabel.text = String(result)
        case "/":
            if(v2==0){
                displaylabel.text = "error"
            }
           
            
            else{
                result = v1/v2
                let newresult = round(result*100000)/100000
            displaylabel.text = String(newresult)
                }
        case "%":
            result = v1.truncatingRemainder(dividingBy: v2)
            let new = round(result*10)/10
            displaylabel.text = String(new)
            
        default:
            displaylabel.text = "ERROR"
        }
        
        /*let split = displaylabel.text!.components(separatedBy: ".")
        let test = displaylabel.text
        if(!(test == "ERROR")){
            if(split[1]=="0"){
                displaylabel.text = split[0]
            }
        }
         */
    }
         
    
    
    
}



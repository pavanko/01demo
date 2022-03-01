//
//  ViewController.swift
//  cordinatesystemsdemo
//
//  Created by Koppuravuri,Pavan Kumar on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minX = image.frame.minX
        let minY = image.frame.minY
        print("(\(minX), \(minY))")
        
        let maxX = image.frame.maxX
        let maxY = image.frame.maxY
        print("(\(maxX), \(maxY))")
        
        let midX = image.frame.midX
        let midY = image.frame.midY
        print("(\(midX), \(midY))")
        
        // move the loation of the car to the top left corner.(0,0)
        image.frame.origin.x = 0
        image.frame.origin.y = 0
        
        
        // move the loation of the car to the top right corner.(314,0)
        image.frame.origin.x = 314
        image.frame.origin.y = 0
        
        // move the loation of the car to the lower left corner.(0,796)
        image.frame.origin.x = 0
        image.frame.origin.y = 796
        
        // move the loation of the car to the lower right corner.(0,0)
        image.frame.origin.x = 314
        image.frame.origin.y = 796
        
        // move the loation of the car to the center ((414/2)-50,(896/2)-50)
        image.frame.origin.x = 157
        image.frame.origin.y = 398
        
        
        
        
       
        
       
        
       
        
        
        
        
    }


}


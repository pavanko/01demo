//
//  ViewController.swift
//  COURSEDISPLAYAPP
//
//  Created by Koppuravuri,Pavan Kumar on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var imageNumber = 0
    
    @IBOutlet weak var displayimage: UIImageView!
    
    @IBOutlet weak var crsnum: UILabel!
    
    @IBOutlet weak var crstitle: UILabel!
    
    @IBOutlet weak var sem: UILabel!
    
    @IBOutlet weak var previous: UIButton!
    
    
    @IBOutlet weak var extbutton: UIButton!
    
    let courses = [["img01","44555","NetworkSecurity","fall2022"],
        ["img02","44643","ios","spring2022"],
    ["img03","44656","Data Streaming","Summer2022"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // LOAD THE FIRST course details (image, coursenum, title,and sem)
        updateUI(imageNumber)
        // previous button should be disabled
        previous.isEnabled = false
        
    }
    
    
    @IBAction func prebuttonclicked(_ sender: UIButton) {
        //next enabled
        extbutton.isEnabled = true
        
        //updateUI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //when it reaches 0 pre should be disabled
        
        if(imageNumber == 0){
            previous.isEnabled = false
        }
        
    }
    
    @IBAction func nextbuttonclicked(_ sender: UIButton) {
        //update the UI
        imageNumber += 1
        updateUI(imageNumber)
        // previous button enabled
        previous.isEnabled = true
        //at the end of array next button disabled
        if(imageNumber == courses.count-1){
            extbutton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum: Int){
        displayimage.image = UIImage(named:courses[imageNum][0])
        crsnum.text = courses[imageNum][1]
        crstitle.text = courses[imageNum][2]
        sem.text = courses[imageNum][3]
        
    }
    

}


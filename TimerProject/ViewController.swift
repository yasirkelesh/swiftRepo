//
//  ViewController.swift
//  TimerProject
//
//  Created by Muhammed yasir Keles on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    
    var counter = 0;
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        
        for _time in 1...10{
            
        counter = counter - 1
        TimeLabel.text = "Time =  \(counter)"
        
        }
    }


 
   
    @IBAction func TimeButton(_ sender: Any) {
        
        print("selam")
    }
}


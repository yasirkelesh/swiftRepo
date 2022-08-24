//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Muhammed yasir Keles on 8/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var BirthdayTextField: UITextField!
    
    @IBOutlet weak var SaveButton: UIButton!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var brithdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let streodName = UserDefaults.standard.object(forKey: "name")
        let streodBirthday = UserDefaults.standard.object(forKey: "day")
    
        if let myName = streodName as? String{
            NameLabel.text = "Name : \(myName)"
        }
        if let myDay = streodBirthday as? String{
            brithdayLabel.text = "Day : \(myDay)"
        }
        
    }


    @IBAction func Save(_ sender: Any) {
        
        UserDefaults.standard.set(NameTextField.text!, forKey: "name")
        UserDefaults.standard.set(BirthdayTextField.text!, forKey: "day")
        NameLabel.text = "Name : \(NameTextField.text!)"
        brithdayLabel.text = "Day : \(BirthdayTextField.text!)"
    }

    @IBAction func deleteB(_ sender: Any) {
        let streodName = UserDefaults.standard.object(forKey: "name")
        let streodBirthday = UserDefaults.standard.object(forKey: "day")
        
        if (streodName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            NameLabel.text = "Name : "
        }
        if (streodBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "day")
            brithdayLabel.text = "Day :"
        }
    }
}


//
//  ViewController.swift
//  wikicora
//
//  Created by 7767863240 on 2018/06/26.
//  Copyright © 2018 7767863240. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nametext: UITextField!
    
    
    @IBOutlet weak var furiganatext: UITextField!
    
    
    @IBOutlet weak var fromtext: UITextField!
    
    
    @IBOutlet weak var businesstext: UITextField!
    
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    var stringArray = [String]()
    var testLabel = ""
    
    
    @IBAction func savebutton(_ sender: Any) {
        
     
        stringArray.append(nametext.text!)
        stringArray.append(furiganatext.text!)
        stringArray.append(fromtext.text!)
        stringArray.append(businesstext.text!)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd年日"
        
        testLabel = formatter.string(from: datepicker.date)
        
        
       stringArray.append(testLabel)
        print (4)
        
        UserDefaults.standard.set(stringArray, forKey: "information")
       print (5)
        performSegue(withIdentifier: "gosecond", sender: nil)
        print (6)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


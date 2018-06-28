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
    var lengthArray = [Int]()
    var testLabel = ""
    
    
    @IBAction func savebutton(_ sender: Any) {
        
      print (nametext.text?.count)
       print ("--------------------------------------")
        
        if (nametext.text!.count>=1) && (furiganatext.text!.count>=1) && (fromtext.text!.count>=1)  && (businesstext.text!.count>=1){
            
            
            stringArray.append(nametext.text!)
            stringArray.append(furiganatext.text!)
            stringArray.append(fromtext.text!)
            stringArray.append(businesstext.text!)
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy年MM月dd年日"
            
            testLabel = formatter.string(from: datepicker.date)
            
            
            stringArray.append(testLabel)
            lengthArray = [stringArray[0].count,stringArray[1].count,stringArray[2].count,stringArray[3].count,stringArray[4].count]
            
            UserDefaults.standard.set(stringArray, forKey: "information")
            UserDefaults.standard.set(lengthArray, forKey : "length")
            
            
            
            
            
            performSegue(withIdentifier: "gosecond", sender: nil)
            
            
            
        }
            
        else if  nametext.text!.count+furiganatext.text!.count+fromtext.text!.count+businesstext.text!.count>=40 {
            
            
            let alertController = UIAlertController(title: "入力不備あり", message: "文字数が多すぎます", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
            
        }
        
        
        else{
            
            let alertController = UIAlertController(title: "入力不備あり", message: "全ての項目を入力してください", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
        
       
            
        }
      
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


//
//  BirthdayViewController.swift
//  wikicora
//
//  Created by user on 2018/07/06.
//  Copyright © 2018年 7767863240. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {

    @IBOutlet weak var dicision: UIButton!
    
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
    
    
    
    @IBAction func decision(_ sender: Any) {
        
        
        var stringArray = UserDefaults.standard.object(forKey: "information") as! [String]
        
        
        
        let formatter = DateFormatter()
        // 5月生まれなら05月となってしまうのが難点
        formatter.dateFormat = "yyyy年MM月dd日"
        
        let testLabel = formatter.string(from: datepicker.date)
        
        
        stringArray.append(testLabel)
        
        UserDefaults.standard.set(stringArray,forKey:"information")
        
        performSegue(withIdentifier: "goComment", sender: nil)
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

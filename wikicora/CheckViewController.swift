//
//  CheckViewController.swift
//  wikicora
//
//  Created by 7767863240 on 2018/06/26.
//  Copyright © 2018 7767863240. All rights reserved.
//

import UIKit

class CheckViewController: UIViewController {

    @IBOutlet weak var setumei: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let lineHeight:CGFloat = 25.0
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        
      
        
        let stringArray = UserDefaults.standard.object(forKey: "information") as! [String]
       
        let text = "\(stringArray[0])（\(stringArray[1])、\(stringArray[4])-）は\(stringArray[2])出身の\(stringArray[3])。\(stringArray[5])"
        
        
        setumei.text = text
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func again(_ sender: Any) {
        
        
        
        performSegue(withIdentifier: "goFirst", sender: nil)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        performSegue(withIdentifier: "goFirst", sender: nil)

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

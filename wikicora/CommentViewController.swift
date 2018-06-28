//
//  CommentViewController.swift
//  wikicora
//
//  Created by 7767863240 on 2018/06/26.
//  Copyright © 2018 7767863240. All rights reserved.
//

import UIKit

class CommentViewController: UIViewController {
    
    
    @IBOutlet weak var commenttext: UITextField!
    
    @IBOutlet weak var limittext: UILabel!
    
    var minimum:Int = 0
    var maximum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var lengthArray = UserDefaults.standard.object(forKey: "length") as! [Int]
        
        var nowcount = lengthArray[0]+lengthArray[1]+lengthArray[2]+lengthArray[3]
        
         minimum = 46-nowcount
         maximum = 86-nowcount
        
        
        limittext.text = "\(minimum)文字以上\(maximum)文字以下で入力してください"
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createButton(_ sender: Any) {
        
        
        if commenttext.text!.count>=minimum  && commenttext.text!.count<=maximum{
            
            
        
        var stringArray = UserDefaults.standard.object(forKey: "information") as! [String]
        
        stringArray.append(commenttext.text!)
        
        UserDefaults.standard.set(stringArray, forKey: "information")
        
        
        var lengthArray = UserDefaults.standard.object(forKey: "length") as! [Int]
        
        lengthArray.append(commenttext.text!.count)
        
        UserDefaults.standard.set(lengthArray, forKey: "length")
        
        performSegue(withIdentifier: "gothird", sender: nil)
            
        }
        
        else {
            
            let alertController = UIAlertController(title: "入力不備あり", message: "文字数制限を守れていません", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
            
        }
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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

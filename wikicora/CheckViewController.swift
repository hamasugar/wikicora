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
    
    @IBOutlet weak var fullname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    
        
        

       let lengthArray = UserDefaults.standard.object(forKey: "length") as! [Int]
        
        let stringArray = UserDefaults.standard.object(forKey: "information") as! [String]
       
        let text = "\(stringArray[0])（\(stringArray[1])、\(stringArray[4])-）は\(stringArray[2])出身の\(stringArray[3])。\(stringArray[5])。"
        
        
       
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 4
        let textAttributes: [NSAttributedStringKey : Any] = [
            .font : UIFont.systemFont(ofSize: 11.0),
            .paragraphStyle : style,
        ]
        let text2 = NSMutableAttributedString(string: text, attributes: textAttributes)
        
        text2.addAttribute(.font, value:UIFont.boldSystemFont(ofSize:11), range: NSMakeRange(0, lengthArray[0]))
        text2.addAttribute(.foregroundColor,
                           value: UIColor.blue, range: NSMakeRange(lengthArray[0]+lengthArray[1]+2, 12))
        
        text2.addAttribute(.foregroundColor,
                           value: UIColor.blue, range: NSMakeRange(17+lengthArray[0]+lengthArray[1], lengthArray[2]))
        
        text2.addAttribute(.foregroundColor,
                           value: UIColor.blue, range: NSMakeRange(20+lengthArray[0]+lengthArray[1]+lengthArray[2], lengthArray[3]))
        
        text2.addAttribute(.foregroundColor,
                           value: UIColor.blue, range: NSMakeRange(lengthArray[0]+1, lengthArray[1]))
        
        setumei.attributedText = text2


        fullname.text = stringArray[0]
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func again(_ sender: Any) {
        
        
        UserDefaults.standard.set([String](), forKey: "information")
        UserDefaults.standard.set([Int](),forKey:"length")
        performSegue(withIdentifier: "goFirst", sender: nil)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        
        UserDefaults.standard.set([String](), forKey: "information")
        UserDefaults.standard.set([Int](),forKey:"length")
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

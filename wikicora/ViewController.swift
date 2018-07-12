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
    
    
   
    
    
    
    var stringArray = [String]()
    var lengthArray = [Int]()
    var testLabel = ""
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func savebutton(_ sender: Any) {
        
     
        
        if (nametext.text!.count>=1) && (furiganatext.text!.count>=1) && (fromtext.text!.count>=1)  && (businesstext.text!.count>=1) && nametext.text!.count+furiganatext.text!.count+fromtext.text!.count+businesstext.text!.count<=40{
            
            
            stringArray.append(nametext.text!)
            stringArray.append(furiganatext.text!)
            stringArray.append(fromtext.text!)
            stringArray.append(businesstext.text!)
            
            
            // 左から順番に、名前、ふりがな、出身地、職業、生年月日を保持している配列
            lengthArray = [stringArray[0].count,stringArray[1].count,stringArray[2].count,stringArray[3].count,11]
            
            
            //すぐ上の配列をUserDefaultsとして保存
            UserDefaults.standard.set(stringArray, forKey: "information")
            // 長さの合計を保存しておく
            UserDefaults.standard.set(lengthArray, forKey : "length")
            
            
            
            // 自動的に次のコメント画面へ
            
            performSegue(withIdentifier: "gosecond", sender: nil)
            
            
            
        }
            
        else if  nametext.text!.count+furiganatext.text!.count+fromtext.text!.count+businesstext.text!.count>=40 {
            
            
            // 文字数が多すぎると次のコメントが書けなくなってしまうのでキリよく４０で制限をかける
            let alertController = UIAlertController(title: "入力不備あり", message: "文字数が多すぎます", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
            
        }
        
        
        else{
            // 入力されていない欄があったらアラートを出す
            let alertController = UIAlertController(title: "入力不備あり", message: "全ての項目を入力してください", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
        
       
            
        }
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // キーボードを閉じる
        self.view.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        saveButton.layer.masksToBounds = true
        saveButton.layer.cornerRadius = 10.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


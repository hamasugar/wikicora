//
//  CheckViewController.swift
//  wikicora
//
//  Created by 7767863240 on 2018/06/26.
//  Copyright © 2018 7767863240. All rights reserved.
//

import UIKit
import Social

class CheckViewController: UIViewController {
    
    
   // 主要な文章全体を指す
    @IBOutlet weak var setumei: UILabel!
     //一番上に出てくる本名の漢字表記のラベル
    @IBOutlet weak var fullname: UILabel!
    //日本の〇〇と小さく表示する部分
    @IBOutlet weak var omake: UILabel!
    
    
    @IBOutlet weak var twiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        let linkcolor:UIColor = UIColor(red: 6/256.0, green: 69/256.0, blue: 173/256.0, alpha: 1.0)
        
       

       let lengthArray = UserDefaults.standard.object(forKey: "length") as! [Int]
        
        let stringArray = UserDefaults.standard.object(forKey: "information") as! [String]
       // 必ず一番最初にある典型的な文を肩にはめ込んで表示する
        let text = "\(stringArray[0])（\(stringArray[1])、\(stringArray[4])-）は\(stringArray[2])出身の\(stringArray[3])。\(stringArray[5])。"
        
        
       
        
        let style = NSMutableParagraphStyle()
        //行間を適当に開ける
        style.lineSpacing = 4
        let textAttributes: [NSAttributedStringKey : Any] = [
            .font : UIFont.systemFont(ofSize: 11.0),
            .paragraphStyle : style,
        ]
        let text2 = NSMutableAttributedString(string: text, attributes: textAttributes)
        
        
    // リンクに値する部分を青く表示してデザインを整える
        text2.addAttribute(.font, value:UIFont.boldSystemFont(ofSize:11), range: NSMakeRange(0, lengthArray[0]))
        text2.addAttribute(.foregroundColor,
                           value: linkcolor, range: NSMakeRange(lengthArray[0]+lengthArray[1]+2, 11))
        
        text2.addAttribute(.foregroundColor,
                           value: linkcolor, range: NSMakeRange(16+lengthArray[0]+lengthArray[1], lengthArray[2]))
        
        text2.addAttribute(.foregroundColor,
                           value: linkcolor, range: NSMakeRange(19+lengthArray[0]+lengthArray[1]+lengthArray[2], lengthArray[3]))
        
       
        
        setumei.attributedText = text2


        fullname.text = stringArray[0]
        
         omake.text = "日本の\(stringArray[3])"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func again(_ sender: Any) {
    
        
        // 入力されたデータを完全に破棄して最初の画面に戻る
        UserDefaults.standard.set([String](), forKey: "information")
        UserDefaults.standard.set([Int](),forKey:"length")
        performSegue(withIdentifier: "goFirst", sender: nil)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        //ここでスクリーンショットを撮る
        // サイズを規定　位置は無視される
        
        
        if UIApplication.shared.statusBarFrame.height == 44.0{
            
            print ("ten----------------------------")
            print (UIApplication.shared.statusBarFrame.height)
            
            
            let rect:CGRect = CGRect(x:67, y: 54, width: 240, height: 382)
            
            var hidari = 0
            //左からどのくらいの位置に画像があるかを説明
            hidari = Int(120-self.view.frame.size.width/2)
            
            // 以下は定型文通り
            UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
            
            
            let context = UIGraphicsGetCurrentContext()
            
            let aa:CGAffineTransform = CGAffineTransform(
                translationX: CGFloat(hidari),y: -54 )
            
            context!.concatenate(aa)
            
            
            view.layer.render(in: UIGraphicsGetCurrentContext()!)
            
            
            //コンテキストから画像を取得する。
            let image = UIGraphicsGetImageFromCurrentImageContext()
            
            //コンテキストを破棄する。
            UIGraphicsEndImageContext()
            
            //画像をPhoto Albumに保存する。
            UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
            
            
            
            
            //入力されたデータを完全に破棄する
            
            UserDefaults.standard.set([String](), forKey: "information")
            UserDefaults.standard.set([Int](),forKey:"length")
            
            
            
        }
        
        else{
        let rect:CGRect = CGRect(x:67, y: 30, width: 240, height: 382)
        print ("tenigai---------")
            print (UIApplication.shared.statusBarFrame.height)
        var hidari = 0
        //左からどのくらいの位置に画像があるかを説明
        hidari = Int(120-self.view.frame.size.width/2)
        
        // 以下は定型文通り
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)

        
        let context = UIGraphicsGetCurrentContext()
        
        let aa:CGAffineTransform = CGAffineTransform(
            translationX: CGFloat(hidari),y: -30 )
        
        context!.concatenate(aa)
        
        
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        
   
        //コンテキストから画像を取得する。
        let image = UIGraphicsGetImageFromCurrentImageContext()

        //コンテキストを破棄する。
        UIGraphicsEndImageContext()

        //画像をPhoto Albumに保存する。
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        

        
       
        //入力されたデータを完全に破棄する
        
        UserDefaults.standard.set([String](), forKey: "information")
        UserDefaults.standard.set([Int](),forKey:"length")
            
        }
        
    }
    
    
    
    @IBAction func TwiButton(_ sender: Any) {
        
        //ここでスクリーンショットを撮る
        // サイズを規定　位置は無視される
        let rect:CGRect = CGRect(x:self.view.frame.size.width/2-120, y: 30, width: 240, height: 382)
        
        var hidari = 0
        //左からどのくらいの位置に画像があるかを説明
        hidari = Int(120-self.view.frame.size.width/2)
        
        // 以下は定型文通り
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        
        
        let context = UIGraphicsGetCurrentContext()
        let top = UIApplication.shared.statusBarFrame.height+10.0

        let aa:CGAffineTransform = CGAffineTransform(
            translationX: CGFloat(hidari),y: -top )
        
        context!.concatenate(aa)
        
        
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        
        
        //コンテキストから画像を取得する。
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        //コンテキストを破棄する。
        UIGraphicsEndImageContext()
        
       
        //入力されたデータを完全に破棄する
        
        UserDefaults.standard.set([String](), forKey: "information")
        UserDefaults.standard.set([Int](),forKey:"length")
        
        let twitter = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        
        twitter?.add(image)
        self.present(twitter!,animated:true,completion:nil)
        

        
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

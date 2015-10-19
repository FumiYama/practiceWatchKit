//
//  ViewController.swift
//  practiceWatchKit
//
//  Created by Fumiya Yamanaka on 2015/10/19.
//  Copyright © 2015年 Fumiya Yamanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let key = "userInput"
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let defaults = NSUserDefaults(suiteName: "group.com.yamanakafumiya.watchlist")


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField.attributedPlaceholder = NSAttributedString(string:"Type SomeThing...",
            attributes:[NSForegroundColorAttributeName: UIColor.grayColor()])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSaveTapBtn(sender: AnyObject) {
        // データの保存 App Groups
        let sharedText = textField.text
        
        self.textLabel.text = sharedText
        
        defaults?.setObject(sharedText, forKey: key)
        defaults?.synchronize()
        
        
    }

}


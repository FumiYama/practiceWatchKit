//
//  InterfaceController.swift
//  practiceWatchKit WatchKit 1 Extension
//
//  Created by Fumiya Yamanaka on 2015/10/19.
//  Copyright © 2015年 Fumiya Yamanaka. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var textLabel: WKInterfaceLabel!
    
    var defaults = NSUserDefaults(suiteName: "group.com.yamanakafumiya.watchlist")
    
    var userInput: String? {
        defaults?.synchronize()
        return defaults?.stringForKey("userInput")
    }

    @IBAction func showUpDate() {
        // データの読み込み
        textLabel.setText(userInput)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

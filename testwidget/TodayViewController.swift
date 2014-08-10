//
//  TodayViewController.swift
//  testwidget
//
//  Created by Takuya Okamoto on 2014/08/05.
//  Copyright (c) 2014 Takuya Okamoto. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController {
    @IBOutlet weak var mylabel: UILabel!
    
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "userDefaultsDidChange:",
            name: NSUserDefaultsDidChangeNotification, object: nil)
    }
    
    func userDefaultsDidChange(notification: NSNotification) {
        updateTextLabel()
    }
    func updateTextLabel() {
        let defaults:NSUserDefaults = NSUserDefaults(suiteName: "group.widgets")
        mylabel.text = defaults.stringForKey("textValue")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Auto Layoutを使用しない場合、preferredContentSizeで高さを指定する
        preferredContentSize = CGSizeMake(320, 50)
        // テキスト表示
        updateTextLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.
        // If an error is encoutered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
}

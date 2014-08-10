//
//  ViewController.swift
//  widgettest
//
//  Created by Takuya Okamoto on 2014/08/05.
//  Copyright (c) 2014 Takuya Okamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func saveCommentAction(sender: AnyObject) {
        let sharedDefaults:NSUserDefaults = NSUserDefaults(suiteName: "group.widgets")
        sharedDefaults.setObject(textfield.text, forKey: "textValue")
        sharedDefaults.synchronize()
    }
    
}


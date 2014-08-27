//
//  InitialConfigViewController.swift
//  widgettest
//
//  Created by Takuya Okamoto on 2014/08/28.
//  Copyright (c) 2014年 Takuya Okamoto. All rights reserved.
//

import UIKit

class InitialConfigViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTapButton(sender: AnyObject) {
        println("onTapButton")
        let birthday = datePicker.date
        println(birthday)
    }
    
    
}


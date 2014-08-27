//
//  MainViewController.swift
//  widgettest
//
//  Created by Takuya Okamoto on 2014/08/28.
//  Copyright (c) 2014年 Takuya Okamoto. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var lestDayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lestDayLabel.text = "200"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


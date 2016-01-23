//
//  ViewController.swift
//  SwiftGCDTest
//
//  Created by 吴迪玮 on 16/1/23.
//  Copyright © 2016年 DNT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var delayTestLabel: UILabel!
    var task:Task?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func delayDisplayAction(sender: AnyObject) {
        self.delayTestLabel.text = ""
        task = delay(5) { () -> () in
            self.delayTestLabel.text = "\(NSDate.init())"
        }
    }

    @IBAction func cancelDelayDisplayAction(sender: AnyObject) {
        if let currentTask = task {
            self.delayTestLabel.text = "取消"
            cancel(currentTask)
        }
    }
}


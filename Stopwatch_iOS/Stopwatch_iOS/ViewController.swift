//
//  ViewController.swift
//  Stopwatch_iOS
//
//  Created by Kentaro Miura on 2017/02/10.
//  Copyright © 2017年 Kentaro Miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopuButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startTimer(_ sender: Any) {
    }

    @IBAction func stopTimer(_ sender: Any) {
    }
    
    @IBAction func resetTimer(_ sender: Any) {
    }
    
}


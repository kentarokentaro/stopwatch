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
    
    var startTime: TimeInterval? = nil
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // レイアウト設定 - 丸にする
        self.timeLabel.layer.masksToBounds = true
        self.timeLabel.layer.cornerRadius = self.timeLabel.bounds.width / 2
        self.startButton.layer.cornerRadius = self.timeLabel.bounds.width / 6
        self.stopuButton.layer.cornerRadius = self.timeLabel.bounds.width / 6
        self.resetButton.layer.cornerRadius = self.timeLabel.bounds.width / 6

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /// time manage
    func update() {
        if let t = self.startTime {
            let time: Double = Date.timeIntervalSinceReferenceDate - t
            let sec: Int = Int(time)
            let msec: Int = Int((time - Double(sec)) * 100.0)
            self.timeLabel.text = NSString(format: "%02d:%02d:%02d", sec/60, sec%60, msec) as String
        }    }
    
    
    /// startTimer
    ///
    /// - Parameter sender: timer start
    @IBAction func startTimer(_ sender: Any) {
        self.startTime = NSDate.timeIntervalSinceReferenceDate
        self.timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
    }

    /// stopTimer
    ///
    /// - Parameter sender: timer stop
    @IBAction func stopTimer(_ sender: Any) {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        self.startTime = nil
        self.timeLabel.text = "00:00:00"
    }
    
}


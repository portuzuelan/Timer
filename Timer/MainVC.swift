//
//  ViewController.swift
//  Timer
//
//  Created by Antonio Omar Pereira on 4/8/18.
//  Copyright © 2018 Antonio Omar Pereira. All rights reserved.
//

import UIKit


class MainVC: UIViewController {
    var timer = Timer()
    var time = 0

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func decreaseTimer(){
        if time > 0 {
            time -= 1
    timerLabel.text = String(time)
        }else{
            timer.invalidate()
        }
        
    
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
        
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
    time = 0
        timerLabel.text = String(time)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



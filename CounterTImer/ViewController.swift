//
//  ViewController.swift
//  CounterTImer
//
//  Created by Thota, Surendra Babu on 21/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CounterLabel: UILabel!
    var Counter : Int = 0
    var Timer : NSTimer = NSTimer()
    
    
    override func viewDidLoad() {
        
        CounterLabel.text = String(Counter)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func StartCounter(sender: AnyObject) {
        Timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("UpdateCounter"), userInfo: nil, repeats: true)
    }
    
    func UpdateCounter(){
        CounterLabel.text = String(Counter++)
    }
    
    @IBAction func PauseCounter(sender: AnyObject) {
        Timer.invalidate()
    }
    
    @IBAction func ResetCounter(sender: AnyObject) {
        Timer.invalidate()
        Counter = 0
        CounterLabel.text = String(Counter)
    }
}


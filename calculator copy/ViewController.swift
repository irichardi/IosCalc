//
//  ViewController.swift
//  calculator
//
//  Created by student on 2016-02-04.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isTypingNum:Bool = false
    var firstNumber:Int? = 0
    var secNumber:Int? = 0
    var operation:String = " "
    
    @IBOutlet weak var calcDisplay: UILabel!
    
    @IBAction func numTapped(sender: AnyObject) {
        let number = sender.currentTitle!
        
        if isTypingNum {
            calcDisplay.text = calcDisplay.text! + number!
        }
        else {
            calcDisplay.text = number
            isTypingNum = true
        }
        print(number)
    }
    
    @IBAction func equalsTap(sender: AnyObject) {
        var result = 0
        
        secNumber = Int(calcDisplay.text!)
        
        if operation == "+" {
            result = firstNumber! + secNumber!
        }
        print("new line")
        print(firstNumber)
        print(operation)
        print(secNumber)
        print(result)
        
        calcDisplay.text = String(result)
    }
    
    
    @IBAction func calcTap(sender: AnyObject) {
        isTypingNum = false
        firstNumber = Int(calcDisplay.text!)
        print(firstNumber)
        
        operation = String(sender.currentTitle)
        print(operation)
    }
    
    
    
}


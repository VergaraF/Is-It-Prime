//
//  ViewController.swift
//  Is It Prime
//
//  Created by Fabian Vergara on 2016-05-01.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isItPrimeButtonListener(sender: AnyObject) {
        let userInputNumber = Int(userInput.text!)
        var isPrime:Bool = true
        
        if (userInputNumber == nil){
            setResultLabel("Invalid input", color: UIColor.redColor())
        }else{
            
            if (userInputNumber == 1){
                isPrime = false
            }else if (userInputNumber != 2 ){
                for (var i = 2; i < userInputNumber; i += 1){
                    if (userInputNumber! % i == 0){
                        isPrime = false
                    }
                }
            }
        }
        if (isPrime){
            setResultLabel("Yes!", color: UIColor.greenColor())
        }else{
            setResultLabel("Nope", color: UIColor.blackColor())
        }
        
    }
    
    func setResultLabel(str:String, color: UIColor){
        resultLabel.text = str
        resultLabel.textColor = color
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


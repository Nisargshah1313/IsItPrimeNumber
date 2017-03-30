//
//  ViewController.swift
//  Is It Prime
//
//  Created by Darshil Shah on 26/03/17.
//  Copyright © 2017 Techleos Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func checkClicked(_ sender: Any) {
        
        var isPrime = true
        
        if let string1 = txtNumber.text
        {
            if let number = Int(string1) {
                if number == 1 {
                    isPrime = false
                    lblResult.text = "It is not a Prime Number."
                    
                }
                
                var i = 2
                
                while  i < number
                {
                    if number % i == 0  {
                        isPrime = false
                        
                    }
                    i+=1
                    
                }
                
                
                if isPrime == true {
                    lblResult.text = "It is a Prime Number."
                }
                else
                    
                {
                    lblResult.text = "It is not a Prime Number."
                }
                
            }
            else{
                lblResult.text = "Please enter a positive whole number."
                
            }
            
            
        }
        else
        {
            lblResult.text = "Please enter a number."
        }
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


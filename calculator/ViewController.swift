//
//  ViewController.swift
//  calculator
//
//  Created by Student P_08 on 26/10/17.
//  Copyright © 2017 pranjal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double=0;
    var previousNumber:Double=0;
    var performingMath=false;
    var operation=0;
    //var mod:Double=0;
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath==true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath=false;
        }
        else
        {
         label.text=label.text! + String(sender.tag-1)
         numberOnScreen=Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 18
        {
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12   //square
            {
                label.text = "sq";
            }
           else if sender.tag == 13 //mod
            {
                label.text = "%";
            }
           else if sender.tag == 14 //division
            {
                label.text = "/";
            }
           else if sender.tag == 15 //multiplication
            {
                label.text = "*";
            }
           else if sender.tag == 16 //subtract
            {
                label.text = "-";
            }
          else if sender.tag == 17 //plus
            {
                label.text = "+";
            }
         operation=sender.tag;
         performingMath=true;
        }
        else if sender.tag==18
        {
            if operation==12
            {
                label.text = String(numberOnScreen * numberOnScreen)
            }
         /*  else if operation==13
            {
                mod = String(previousNumber % numberOnScreen)
                if(mod<0)
                {
                   mod = String((numberOnScreen < 0) ? mod - numberOnScreen : mod + numberOnScreen);
                }
                label.text =(mod);
            }*/
           else if operation==14
            {
                label.text = String(previousNumber / numberOnScreen)
            }
           else if operation==15
            {
                label.text = String(previousNumber * numberOnScreen)
            }
           else if operation==16
            {
                label.text = String(previousNumber - numberOnScreen)
            }
           else if operation==17
            {
                label.text = String(previousNumber + numberOnScreen)
            }

        }
        else if sender.tag==11
        {
            label.text="";
            numberOnScreen=0;
            previousNumber=0;
            operation=0;
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


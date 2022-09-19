//
//  ViewController.swift
//  Mod2CreativeAppCalculator_Rozumny
//
//  Created by MASON ROZUMNY on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numOneOutlet: UITextField!
    @IBOutlet weak var addOutlet: UIButton!
    @IBOutlet weak var numTwoOutlet: UITextField!
    @IBOutlet weak var subtractOutlet: UIButton!
    @IBOutlet weak var answerOutlet: UILabel!
    
    @IBOutlet weak var num3Outlet: UITextField!
    @IBOutlet weak var num4Outlet: UITextField!
    @IBOutlet weak var perimeterOutlet: UILabel!
    

    override func viewDidLoad() {
        numOneOutlet.keyboardType = .asciiCapableNumberPad
        numTwoOutlet.keyboardType = .asciiCapableNumberPad
        num3Outlet.keyboardType = .asciiCapableNumberPad
        num4Outlet.keyboardType = .asciiCapableNumberPad
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    
    }

    @IBAction func addButton(_ sender: UIButton)
    {
        let num1 = Double(numOneOutlet.text!)!
        let num2 = Double(numTwoOutlet.text!)!
        answerOutlet.text = "\(num1) + \(num2) = \(num1 + num2)"
    }
    @IBAction func subtractButton(_ sender: UIButton)
    {
        let num1 = Double(numOneOutlet.text!)!
        let num2 = Double(numTwoOutlet.text!)!
        answerOutlet.text = "\(num1) - \(num2) = \(num1 - num2)"
    }
    @IBAction func multiplyButton(_ sender: UIButton)
    {
        let num1 = Double(numOneOutlet.text!)!
        let num2 = Double(numTwoOutlet.text!)!
        answerOutlet.text = "\(num1) * \(num2) = \(num1*num2)"
    }
    @IBAction func divideButton(_ sender: UIButton)
    {
        let num1 = Double(numOneOutlet.text!)!
        let num2 = Double(numTwoOutlet.text!)!
        if num2 == 0
        {
            answerOutlet.text = "Can't do that!"
        }
        else
        {
            answerOutlet.text = "\(num1) / \(num2) = \(num1/num2)"
        }
    }
    @IBAction func calculateButton(_ sender: UIButton)
    {
        let width = Int(num3Outlet.text!)!
        let height = Int(num4Outlet.text!)!
        var answer = (2*width) + (2*height)
        perimeterOutlet.text = "(2 * \(height)) + (2 * \(width)) = \(answer)"
        
    }
    

}


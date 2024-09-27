//
//  ViewController.swift
//  Calculator
//
//  Created by Merve Çalışkan on 27.09.2024.
//

import UIKit

class Calculator: UIViewController {
    @IBOutlet weak var startLabel: UILabel!
    
    var firstNumber: Double = 0
    var currentNumber: Double = 0
    var performingOperation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startLabel.text = "0"
        
    }
    func inputNumber(number: String) {
        if performingOperation {
            startLabel.text = number
            performingOperation = false
        } else {
            if startLabel.text == "0" {
                startLabel.text = number
            } else {
                startLabel.text = startLabel.text! + number
            }
        }
        currentNumber = Double(startLabel.text!) ?? 0
    }
    @IBAction func oneButton(_ sender: Any) {
        inputNumber(number: "1")
    }
    @IBAction func twoButton(_ sender: Any) {
        inputNumber(number: "2")
    }
    @IBAction func threeButton(_ sender: Any) {
        inputNumber(number: "3")
    }
    @IBAction func fourButton(_ sender: Any) {
        inputNumber(number: "4")
    }
    @IBAction func fiveButton(_ sender: Any) {
        inputNumber(number: "5")
    }
    @IBAction func sixButton(_ sender: Any) {
        inputNumber(number: "6")
    }
    @IBAction func sevenButton(_ sender: Any) {
        inputNumber(number: "7")
    }
    @IBAction func eightButton(_ sender: Any) {
        inputNumber(number: "8")
    }
    @IBAction func nineButton(_ sender: Any) {
        inputNumber(number: "9")
    }
    @IBAction func zeroButton(_ sender: Any) {
        inputNumber(number: "0")
    }
    @IBAction func commaButton(_ sender: Any) {
        if let text = startLabel.text, !text.contains(".") {
            startLabel.text = text + "."
        }
    }
    @IBAction func equalsButton(_ sender: Any) {
        let result = firstNumber + currentNumber
        startLabel.text = String(result)
        performingOperation = false
    }
    @IBAction func ACButton(_ sender: Any) {
        startLabel.text = "0"
        firstNumber = 0
        currentNumber = 0
        performingOperation = false
    }
    @IBAction func plusButton(_ sender: Any) {
        firstNumber = Double(startLabel.text!) ?? 0
        performingOperation = true
    }
    
}


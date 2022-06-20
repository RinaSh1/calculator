//
//  ViewController.swift
//  calculator
//
//  Created by Rina Shabani on 14.6.22.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    let firstField = UITextField(frame:CGRect(x: 100, y: 400,width: 210,height:  35))
    let secondField = UITextField(frame:CGRect(x: 100, y: 450,width: 210,height:  35))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .gray
        
        
        self.view.addSubview(firstField)
        self.view.addSubview(secondField)
        
        setupLayout()
        
        self.view.addSubview(label)
        
    }
    private func setupLayout() {
        label.center = CGPoint(x: 185, y: 285)
        label.textAlignment = .center
        label.text = "Result will show here"
        
        //textField
        firstField.backgroundColor = .white
        secondField.backgroundColor = .white
        firstField.keyboardType = .numberPad
        secondField.keyboardType = .numberPad
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(title: "Calculate", style: .done, target: self, action: #selector(calculateSum))
        toolBar.items = [flexibleSpace, doneButton]
        toolBar.sizeToFit()
        firstField.inputAccessoryView = toolBar
        secondField.inputAccessoryView = toolBar
        
        
        
    }
    @objc public func calculateSum() {
        let oneNum = firstField.text
        let oneInt = Int(oneNum!)
        let secondNum = secondField.text
        let twoInt = Int(secondNum!)
        let sum = oneInt! + twoInt!
        label.text = "\(sum)"
        
        
    }
    
    
}


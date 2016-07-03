//
//  ConverterController.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ConverterController : UIViewController {
    
    @IBOutlet weak var destinationValue: UITextField!
    
    @IBOutlet weak var sourceValue: UITextField!
    
    var rateProvider : Provider!
    var converter : ConvertProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rateProvider = LocalExchangeProvider()
        converter = RubToDollarConverter(rateProvider: rateProvider)
    }
    
    @IBAction func convert(sender: AnyObject) {
        
        if let text = sourceValue.text {
            if !text.isEmpty {
                performCalculations(value: text)
            } else {
                showEnterValueDialog()
            }
        }
    }
    
    func performCalculations(value text : String) {
        if let value = Double(text) {
            let calculatedValue = converter.convert(value: value)
            destinationValue.text = String(stringInterpolationSegment: calculatedValue)
        } else {
            showNotCorrectValueDialog()
        }
    }
    
    func showEnterValueDialog() {
        showDialog(message: "Enter value!")
    }
    
    func showNotCorrectValueDialog() {
        showDialog(message: "Enter correct source value!")
    }
    
    func showDialog(message message : String?) {
        let dialog = UIAlertController(title: "Converter", message: message, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "OK", style: .Default) {
            _ -> Void in
            dialog.dismissViewControllerAnimated(true, completion: nil)
        }
        dialog.addAction(okAction)
        
        presentViewController(dialog, animated: true, completion: nil)
    }
    
}

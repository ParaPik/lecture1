//
//  SecondViewController.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    @IBOutlet weak var choiceLabel: UILabel!
    
    @IBAction func multiChoiceTaped(sender: AnyObject) {
        let dialog = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let actionOne = UIAlertAction(title: "YES", style: .Default) {
            _ -> Void in
            self.choiceLabel.text = "YES"
            dialog.dismissViewControllerAnimated(true, completion: nil)
        }
        
        let actionTwo = UIAlertAction(title: "NO", style: .Default) {
            _ -> Void in
            self.choiceLabel.text = "NOP"
            dialog.dismissViewControllerAnimated(true, completion: nil)
        }
        
        dialog.addAction(actionOne)
        dialog.addAction(actionTwo)
        presentViewController(dialog, animated: true, completion: nil)
    }
    
    
}

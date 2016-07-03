//
//  ViewController.swift
//  Lecture1
//
//  Created by админ on 03.07.16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myText: UITextField!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewDidLoad() {        
        super.viewDidLoad()
        myText.delegate = self
        print("viewDidLoad")
    }

    @IBAction func alertBtnTaped(sender: AnyObject) {
        let dialog = UIAlertController(title: "Alert", message: "Some message", preferredStyle: UIAlertControllerStyle.Alert)
        
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            _ -> Void in
            dialog.dismissViewControllerAnimated(true, completion: nil)
        }
        
        dialog.addAction(action)
        presentViewController(dialog, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTaped(sender: AnyObject) {
        if let text = myText.text {
            myLabel.text = "Hello, " + text
        }
    }

}

extension ViewController : UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var resultStr = ""
        if let text = myLabel.text {
            resultStr += text
        }
        
        myLabel.text = resultStr + string
        return true
    }
    
}


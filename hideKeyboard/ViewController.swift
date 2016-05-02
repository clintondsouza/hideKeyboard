//
//  ViewController.swift
//  hideKeyboard
//
//  Created by Clinton D'Souza on 05/10/15.
//  Copyright © 2015 Clinton D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var niggaName: UITextField!
    
    @IBOutlet weak var helloNigga: UILabel!

    
    @IBAction func changeLabel(sender: AnyObject) {
        helloNigga.text = "Hello, " + niggaName.text! + "!"
        self.niggaName.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("random")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


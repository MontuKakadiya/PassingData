//
//  ViewController.swift

//  PassingData
//
//  Created by iFlame on 12/01/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MyTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func MybtnPress(sender: AnyObject){
        if MyTextField.text != nil
        {
          self.performSegueWithIdentifier("cell", sender: self)
        }

        func prepareForSegue(segue: UIStoryboardSegue, sender: Any?) {
    
        let connect = segue.destinationViewController as! SecondViewController
        
        connect.lname = MyTextField.text!
        
    }


}
}


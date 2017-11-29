//
//  ViewController.swift
//  Add Numbers
//
//  Created by George Nick Gorzynski on 28/11/2017.
//  Copyright © 2017 g30r93g. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTotal(_ sender: Any) {
        // Add the two numbers together and display the result
        var total = 0.00
        
        if numberOne.text?.count == 0 || numberTwo.text?.count == 0 {
            self.totalLabel.text = "ERROR - Enter Numbers"
        } else {
            total = Double(numberOne.text!)! + Double(numberTwo.text!)!
            self.totalLabel.text = "\(total)"
        }
    }
    
}

//
//  ViewController.swift
//  Vaibhav-Tailor_COMP2125-Sec003_Lab03-Ex02
//

import UIKit

class ViewController: UIViewController {
    
    //Declaring Variables for tips
    var defaultTip = 0.0
    var customTip = 0
    
    //Declaring outlets
    @IBOutlet weak var amountText: UITextField!
    
    @IBOutlet weak var customTipLabel: UILabel!
    
    @IBOutlet weak var defaultTipAmount: UILabel!
    
    @IBOutlet weak var defaultTipTotal: UILabel!
    
    @IBOutlet weak var customTipAmount: UILabel!
    
    @IBOutlet weak var customTipTotal: UILabel!
    
    @IBOutlet weak var customTipLabel2: UILabel!
    
    @IBAction func amountSlider(_ sender: UISlider) {
        
        //Updating the value of customTipLabels whenever slider changes
        //sender.value takes the value and description converts it into string
        customTipLabel.text = Int(round(sender.value)).description + "%"
        customTipLabel2.text = Int(round(sender.value)).description + "%"
        
        //Calculate custom tip
        customTip = Int(round(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amountText.becomeFirstResponder()
    }
    
    @IBAction func Tip(_ sender: AnyObject) {
        
        //Declaring variable amount to get the amount user entered in TextField
        //Converting it to double value and assigning default value 0
        let amount = Double(amountText.text ?? "") ?? 0
        
        //Calculating default tip.
        let defaultTip = amount * 0.15
        //Updating default tip labels
        defaultTipAmount.text = String(format: "$ %.2f", defaultTip)
        defaultTipTotal.text = String(format: "$ %.2f", (amount + defaultTip))
        
        //Calucating custom tip value
        let customTipValue = (amount * Double(customTip))/100
        //Updating custom tip labels
        customTipAmount.text = String(format: "$ %.2f", customTipValue)
        customTipTotal.text = String(format: "$ %.2f", (amount + customTipValue))
    }
}
    
    



//
//  ViewController.swift
//  Prog2DHC0015Sp22
//
//  Created by Dimitri Chaber on 1/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var period: UITextField!
    @IBOutlet weak var rate: UITextField!
    
    func calculate(total : Int, amount: Int, interest : Double) -> Double {
        var sum = 0.0;
        for j in 1...amount{
            sum += 1/pow(1.0+interest, Double(j))
        }
        return Double(total)/sum
    }

    @IBAction func calculate(_ sender: UIButton) {
        result.text = String( calculate(total: Int(amount.text!)!, amount: Int(period.text!)!, interest: Double(rate.text!)!))
    }
    
    @IBOutlet weak var result: UILabel!
}


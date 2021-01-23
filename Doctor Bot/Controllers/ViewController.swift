//
//  ViewController.swift
//  Doctor Bot
//
//  Created by Gokul Nair on 23/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var diagnoseBtton: UIButton!
    @IBOutlet weak var pillBtn: UIButton!
    @IBOutlet weak var doctorBtn: UIButton!
    @IBOutlet weak var hospitalizeBtn: UIButton!
    @IBOutlet weak var reportBtn: UIButton!
    @IBOutlet weak var emergencyBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 60
        
        diagnoseBtton.layer.cornerRadius = 10
        diagnoseBtton.layer.borderWidth = 1
        diagnoseBtton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        pillBtn.layer.cornerRadius = 10
        pillBtn.layer.borderWidth = 1
        pillBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        doctorBtn.layer.cornerRadius = 10
        doctorBtn.layer.borderWidth = 1
        doctorBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        hospitalizeBtn.layer.cornerRadius = 10
        hospitalizeBtn.layer.borderWidth = 1
        hospitalizeBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        reportBtn.layer.cornerRadius = 10
        reportBtn.layer.borderWidth = 1
        reportBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        emergencyBtn.layer.cornerRadius = 10
        emergencyBtn.layer.borderWidth = 1
        emergencyBtn.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

    @IBAction func diagnoseButton(_ sender: Any) {
        self.performSegue(withIdentifier: "diagnose", sender: nil)
    }
    
}


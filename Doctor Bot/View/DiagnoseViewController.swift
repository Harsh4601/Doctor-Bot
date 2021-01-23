//
//  DiagnoseViewController.swift
//  Doctor Bot
//
//  Created by Gokul Nair on 24/01/21.
//

import UIKit

class DiagnoseViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view1.layer.cornerRadius = 20
    }
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func covid(_ sender: Any) {
        self.performSegue(withIdentifier: "covid", sender: nil)
    }
    @IBAction func skind(_ sender: Any) {
        self.performSegue(withIdentifier: "skind", sender: nil)
    }
    @IBAction func teeth(_ sender: Any) {
        self.performSegue(withIdentifier: "teeth", sender: nil)
    }
    @IBAction func nail(_ sender: Any) {
        self.performSegue(withIdentifier: "nail", sender: nil)
    }
    @IBAction func skinc(_ sender: Any) {
        self.performSegue(withIdentifier: "skinc", sender: nil)
    }
    
}

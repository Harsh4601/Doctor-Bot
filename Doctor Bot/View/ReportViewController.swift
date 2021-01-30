//
//  ReportViewController.swift
//  Doctor Bot
//
//  Created by Gokul Nair on 30/01/21.
//

import UIKit
import Loafjet

//MARK:- PROTOCOL & DELEGATE

protocol DataDelegate{
    func updateArray(newArray: String)
}

class ReportViewController: UIViewController{

    var reportArray = [Report]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        APIFunctions.functions.delegate = self
        APIFunctions.functions.fetchReport()
    }
    @IBAction func addReportBtn(_ sender: Any) {
        //Loaf.PlainLoaf(Message: "hello", Position: .center, AnimationDirection: .Right, LoafjetView: view)
        self.performSegue(withIdentifier: "forms", sender: nil)
    }
    
}

extension ReportViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return reportArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ReportTableViewCell
        cell.issueLabel.text = self.reportArray[indexPath.row].medicine
        cell.dateLabel.text = self.reportArray[indexPath.row].date
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FormViewController
        
        if segue.identifier == "cellValue" {
            vc.report = reportArray[tableView.indexPathForSelectedRow!.row]
            vc.update = true
        }
    }
}

//MARK:-  CUSTOM DELEGATE

extension ReportViewController: DataDelegate{
    func updateArray(newArray: String) {
        
        do{
            reportArray = try JSONDecoder().decode([Report].self, from: newArray.data(using: .utf8)!)
            print(reportArray)
        }catch{
            print("Failed to decode")
        }
        
        self.tableView?.reloadData()
    }
    
    
}

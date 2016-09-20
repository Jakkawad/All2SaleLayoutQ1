//
//  Page5StartViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page5StartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var section1Array = ["Ship To", "Currency", "Language", "Notification Setions", "Clear Cache"]
    var section2Array = ["Currency Converter"]
    var section3Array = ["Customer Service", "App Suggestion", "Rate AliExpress"]
    var section4Array = ["Privacy Policy", "Terms of License and Use"]
    
    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return section1Array.count
        } else if section == 1 {
            return section2Array.count
        } else if section == 2 {
            return section3Array.count
        } else {
            return section4Array.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            cell0?.textLabel?.text = section1Array[indexPath.row]
            return cell0!
        } else if indexPath.section == 1 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            cell0?.textLabel?.text = section2Array[indexPath.row]
            return cell0!
        } else if indexPath.section == 2 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            cell0?.textLabel?.text = section3Array[indexPath.row]
            return cell0!
        } else {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            cell0?.textLabel?.text = section4Array[indexPath.row]
            return cell0!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

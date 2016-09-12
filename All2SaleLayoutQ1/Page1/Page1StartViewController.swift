//
//  Page1StartViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/12/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1StartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? Page1StartCell0TableViewCell
            return cell0!
        } else {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1") as? Page1StartCell1TableViewCell
            return cell1!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 224
        } else {
            return 224
        }
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

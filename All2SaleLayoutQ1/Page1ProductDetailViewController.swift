//
//  Page1ProductDetailViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1ProductDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 2
        } else if section == 3 {
            return 2
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 3
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? Page1ProductDetailCell0TableViewCell
            return cell0!
        } else if indexPath.section == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1") as? Page1ProductDetailCell1TableViewCell
            return cell1!
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell2")
                return cell0!
            } else {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell3")
                return cell0!
            }
        } else if indexPath.section == 3 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell4")
                return cell0!
            } else {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell5")
                return cell0!
            }
        } else if indexPath.section == 4 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell6") as? Page1ProductDetailCell6TableViewCell
            return cell0!
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell7")
                return cell0!
            } else if indexPath.row == 1 {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell8")
                return cell0!
            } else {
                let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell9")
                return cell0!
            }
        } else {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell10")
            return cell0!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat.leastNormalMagnitude
        }
        return 20
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        } else if section == 1 {
            return ""
        } else if section == 2 {
            return "รายละเอียดสินค้า"
        } else if section == 3 {
            return "รีวิวสินค้า"
        } else if section == 4 {
            return ""
        } else if section == 5 {
            return "จัดจำหน่ายโดย"
        } else {
            return "สินค้าที่น่าสนใจของร้านนี้"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 240
        } else if indexPath.section == 1 {
            return 130
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                return 100
            } else {
                return 24
            }
        } else if indexPath.section == 3 {
            if indexPath.row == 0 {
                return 120
            } else {
                return 24
            }
        } else if indexPath.section == 4 {
            return 130
        } else if indexPath.section == 5 {
            if indexPath.row == 0 {
                return 100
            } else if indexPath.row == 1 {
                return 44
            } else {
                return 44
            }
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

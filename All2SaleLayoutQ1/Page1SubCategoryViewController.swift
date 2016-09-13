//
//  Page1SubCategoryViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1SubCategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var subCategoryArray:[String] = ["สินค้าทั้งหมดในหมวดหมู่นี้", "รองเท้าผ้าใบ", "รองเท้าแตะ", "รองเท้ากีฬา"]
    var subCategorySelectedArray = [String]()
    
    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subCategoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
        cell0?.textLabel?.text = subCategoryArray[indexPath.row]
        return cell0!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pageFilter = self.navigationController?.viewControllers[0] as! Page1FilterViewController
        pageFilter.subCategorySelected = subCategoryArray[indexPath.row]
        
        navigationController?.popToRootViewController(animated: true)
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

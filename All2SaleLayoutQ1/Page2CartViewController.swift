//
//  Page2CartViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page2CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sectionArray:[String] = ["1", "2", "3", "4", "5", "6"]

    @IBOutlet weak var tableView:UITableView!
    @IBAction func btnCancel(_ sender: AnyObject) {
        print("Cancel")
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
        return cell0!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "survy2014"
        return sectionArray[section]
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

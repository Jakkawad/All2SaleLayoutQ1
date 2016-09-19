//
//  Page1FilterViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1FilterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sortArray:[String] = ["สินค้าล่าสุด", "ราคาต่ำ - สูง", "ราคาสูง - ต่ำ", "เรียงตามชื่อ A-Z", "เรียงตามชื่อ Z-A"]
    var categoryArray:[String] = []
    var ratingArray:[String] = []
    
    var sortSelected:String!
    var subCategorySelected:String!
    var ratingSelected:[String]!
    var priceStart:String!
    var priceEnd:String!
    
    
    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnDone(_ sender: AnyObject) {
        delay(delay: 0.5) {
            self.tableView.reloadData()
            print("Delay")
            delay(delay: 0.5) {
                print("Delay")
                print("ArrayFilter = \(self.sortSelected)")
                print("Rating = \(self.ratingSelected)")
                print("Category = \(self.subCategorySelected)")
                print("PriceStart = \(self.priceStart)")
                print("PriceEnd = \(self.priceEnd)")
                
                self.dismiss(animated: true, completion: nil)
                
            }
        }
        //self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            if sortSelected != nil {
                cell0?.detailTextLabel?.text = sortSelected
            }
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1")
            if subCategorySelected != nil {
                cell1?.detailTextLabel?.text = subCategorySelected
            }
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "tableCell2")
            var ratingText:String!
            ratingText = ""
            if(ratingSelected != nil){
                var i = 1
                for ratings in ratingSelected {
                    if(i == ratingSelected.count){
                        ratingText.append(ratings)
                    }else{
                        ratingText.append(ratings+",")
                    }
                    i += 1
                }
            }
            print(ratingText);
            cell2?.detailTextLabel?.text = ratingText
            return cell2!
        } else {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "tableCell3") as! Page1FilterCell3TableViewCell
            priceStart = cell3.priceStart
            priceEnd = cell3.priceEnd
            return cell3
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SortSegue" {
            print("Sort")
            let pageSort = segue.destination as! Page1SortViewController
            pageSort.sortArray = sortArray
        } else if segue.identifier == "CategorySegue" {
            print("Category")
            //let pageCategory = segue.destination as! Page1CategoryViewController
            //pageCategory.
        } else {
            print("Segue Nil")
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

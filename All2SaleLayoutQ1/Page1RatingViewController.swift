//
//  Page1RatingViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1RatingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var ratingArray:[String] = ["All", "1", "2", "3", "4", "5"]
    var ratedArray = [String]()
    
    @IBOutlet weak var tableView:UITableView!
    
    @IBAction func btnReturn(_ sender: AnyObject) {
        navigationController?.popViewController(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ratingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1")
            return cell1!
        } else if indexPath.row == 2 {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "tableCell2")
            return cell2!
        } else if indexPath.row == 3 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "tableCell3")
            return cell3!
        } else if indexPath.row == 4 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "tableCell4")
            return cell4!
        } else {
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "tableCell5")
            return cell5!
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ArrayRated = \(ratingArray[indexPath.row])")
        if ratingArray[indexPath.row] == "All" {
            //print("All")
            let selectAll = ["All"]
            ratedArray = selectAll
        } else {
            //print("Number Rating")
            ratedArray.append(ratingArray[indexPath.row])
            print("ArrayRated = \(ratedArray)")
        }
        /*
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.selectionStyle = UITableViewCellSelectionStyle.none
        let pageFilter = self.navigationController?.viewControllers[0] as! Page1FilterViewController
        if ratingArray[indexPath.row] == "All" {
            print("Select All")
            let selectAll = ["All"]
            //arrayRated.append(arrayRating[indexPath.row])
            ratedArray = selectAll
            print("ArrayRated = \(ratedArray)")
            pageFilter.ratingSelected = ratedArray
            navigationController?.popViewController(animated: true)
        } else {
            print("Number Rating")
            ratedArray.append(ratingArray[indexPath.row])
            print("ArrayRated = \(ratedArray)")
            pageFilter.ratingSelected = ratedArray
        }
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        */
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("Deselect = \(ratingArray[indexPath.row])")
        let indexValue = ratingArray.index(of: indexPath.row)!
        print("indexValue \(indexValue)")
        if ratingArray[indexPath.row] == "All" {
            //print("All")
        } else {
            //print("Number")
            //ratedArray.remove(at: indexValue)
        }
        //let selectCell = ratingArray.index(of: ratingArray[indexPath.row])
        //print("Select[] \(ratingArray[selectCell!])")
        //let aa = indexPath.row
        //print("aa \(aa)")
        //ratedArray.remove(at: aa)
        //let indexValue = ratingArray.index(of: ratingArray[indexPath.row])!
        //ratedArray.remove(at: indexValue)
        //print("indexValue \(indexValue)")
        //let indexInt = ratingArray[indexPath.row]
        //print("indexInt \(indexInt)")
        //ratedArray.remove(at: indexPath)
        /*
        if let indexValue = ratingArray.index(of: ratingArray[indexPath.row]) {
            print("indexValue \(indexValue)")
            //ratedArray.remove(at: indexValue)
            //ratedArray.remove(at: indexValue)
        }
        */
        print("Number in ratedArray = \(ratedArray)")
        /*
        print("Deselect = \(ratingArray[indexPath.row])")
        if let indexValue = ratingArray.index(of: ratingArray[indexPath.row]) {
            ratingArray.remove(at: indexValue)
        }
        print("ArrayRated = \(ratingArray)")
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.selectionStyle = UITableViewCellSelectionStyle.none
        //tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellSelectionStyle.none
        */
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.allowsMultipleSelection = true
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

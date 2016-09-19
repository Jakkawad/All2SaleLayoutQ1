//
//  Page1ProductAllViewController.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1ProductAllViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let gridFlowLayout = ProductsGridFlowLayout()
    /// Flow layout that displays cells with a List layout, like in a tableView
    let listFlowLayout = ProductsListFlowLayout()
    
    /// True if the current flow layout is a grid
    var isGridFlowLayoutUsed: Bool = false {
        didSet {
            //listButton.alpha = (isGridFlowLayoutUsed == true) ? 0.9 : 1.0
            //gridButton.alpha = (isGridFlowLayoutUsed == true) ? 1.0 : 0.9
        }
    }
    
    @IBOutlet weak var gridButton: UIBarButtonItem!
    @IBOutlet weak var listButton: UIBarButtonItem!
    

    @IBOutlet weak var collectionView:UICollectionView!
    
    @IBAction func gridButton(_ sender: AnyObject) {
        isGridFlowLayoutUsed = true
        collectionView.reloadData()
        UIView.animate(withDuration: 0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: false)
        }
    }
    
    @IBAction func listButton(_ sender: AnyObject) {
        isGridFlowLayoutUsed = false
        collectionView.reloadData()
        UIView.animate(withDuration: 0.2) { () -> Void in
            self.collectionView.collectionViewLayout.invalidateLayout()
            self.collectionView.setCollectionViewLayout(self.listFlowLayout, animated: true)
        }
    }
    @IBAction func searchFilter(_ sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let newProduct = UIAlertAction(title: "สินค้าล่าสุด", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("New")
        })
        
        let lowhightProduct = UIAlertAction(title: "ราคาต่ำ - สูง", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Hight")
        })
        
        let hightlowProduct = UIAlertAction(title: "ราคาสูง - ต่ำ", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Low")
        })
        
        let azProduct = UIAlertAction(title: "เรียงตามชื่อ A - Z", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("A - Z")
        })
        
        let zaProduct = UIAlertAction(title: "เรียงตามชื่อ Z - A", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Z - A")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        optionMenu.addAction(newProduct)
        optionMenu.addAction(lowhightProduct)
        optionMenu.addAction(hightlowProduct)
        optionMenu.addAction(azProduct)
        optionMenu.addAction(zaProduct)
        optionMenu.addAction(cancelAction)
        
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func setupGrid() {
        self.collectionView.collectionViewLayout.invalidateLayout()
        self.collectionView.setCollectionViewLayout(self.gridFlowLayout, animated: false)
    }
    
    func setupInitialLayout() {
        isGridFlowLayoutUsed = true
        collectionView.collectionViewLayout = gridFlowLayout
    }
    
    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath)
        return cell0
        */
        var tableCell:String!
        if isGridFlowLayoutUsed == true {
            print("Grid")
            tableCell = "tableCell0"
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tableCell, for: indexPath)// as! PhotoCollectionCell
            return cell
            
        } else {
            print("List")
            tableCell = "tableCell1"
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: tableCell, for: indexPath)// as! PhotoCollectionCell
            return cell
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupGrid()
        isGridFlowLayoutUsed = true
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

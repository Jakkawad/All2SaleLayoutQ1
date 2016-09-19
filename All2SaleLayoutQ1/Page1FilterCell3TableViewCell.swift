//
//  Page1FilterCell3TableViewCell.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1FilterCell3TableViewCell: UITableViewCell, UITextFieldDelegate {

    var priceStart:String!
    var priceEnd:String!
    
    @IBOutlet weak var txtPriceStart:UITextField!
    @IBOutlet weak var txtPriceEnd:UITextField!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TextField should return method called")
        priceStart = txtPriceStart.text
        priceEnd = txtPriceEnd.text
    }
    /*
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should and editing method called")
        priceStart = txtPriceStart.text
        priceEnd = txtPriceEnd.text
        return true
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        txtPriceStart.keyboardType = UIKeyboardType.numberPad
        txtPriceEnd.keyboardType = UIKeyboardType.numberPad
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

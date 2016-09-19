//
//  Page1OptionCell6TableViewCell.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class Page1OptionCell6TableViewCell: UITableViewCell {

    @IBOutlet weak var txtQuilty:UITextField!
    
    var quilty:String!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        txtQuilty.keyboardType = UIKeyboardType.numberPad
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

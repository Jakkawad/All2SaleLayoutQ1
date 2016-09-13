//
//  GeneralClass.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/13/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

/*
 delay(delay: 1) {
    print("Delay 1")
 }
*/
func delay(delay: Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
}

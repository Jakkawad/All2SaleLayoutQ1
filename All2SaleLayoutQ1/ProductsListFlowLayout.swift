//
//  ProductsListFlowLayout.swift
//  All2SaleLayoutQ1
//
//  Created by admin on 9/19/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ProductsListFlowLayout: UICollectionViewFlowLayout {
    // fix size
    let itemHeight: CGFloat = 240
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 0
        minimumLineSpacing = 1
        scrollDirection = .vertical
    }
    
    func itemWidth() -> CGFloat {
        return collectionView!.frame.width
    }
    
    override var itemSize: CGSize {
        set {
            //self.itemSize = CGSizeMake(itemWidth(), itemHeight)
            self.itemSize = CGSize(width: itemWidth(), height: itemHeight)
        }
        get {
            //return CGSizeMake(itemWidth(), itemHeight)
            return CGSize(width: itemWidth(), height: itemHeight)
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
}

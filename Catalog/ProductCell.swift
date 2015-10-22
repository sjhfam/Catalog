//
//  ProductCell.swift
//  Catalog
//
//  Created by sdt5 on 2015. 10. 22..
//  Copyright © 2015년 feelow. All rights reserved.
//

import UIKit

protocol ProductCellDelegate : class {
    func addCart(productCode : String)
}


class ProductCell: UITableViewCell {
    
    var productCode : String!
    weak var delegate : ProductCellDelegate!
    

    @IBAction func addCart(sender: AnyObject) {
        
        delegate.addCart(productCode)
    }

    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

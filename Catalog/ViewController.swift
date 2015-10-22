//
//  ViewController.swift
//  Catalog
//
//  Created by sdt5 on 2015. 10. 22..
//  Copyright © 2015년 feelow. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , ProductCellDelegate {
    
    func addCart(productCode: String) {
        // 위임
    }
    
    var productList : [Product]!

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PRODUCT_CELL")
            as! ProductCell
        
        let product = productList[indexPath.row]
        cell.productName.text = product.name
        cell.productPrice.text = product.price
        cell.productImage.image = UIImage(named: product.image)
        
        
        
        cell.productCode = product.code
        
        // 셀 델리게이트 설정
        cell.delegate = self
        
        return cell
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        productList = [
                Product(code: "001", name: "Baseball", price: "100", image: "Baseball"),
            Product(code: "002", name: "Basketball", price: "200", image: "Basketball"),
            Product(code: "003", name: "Football", price: "300", image: "Football"),
            Product(code: "004", name: "Golf", price: "400", image: "Golf"),
            Product(code: "005", name: "Rugby", price: "500", image: "Rugby"),
            Product(code: "006", name: "Tennis", price: "600", image: "Tennis"),
            Product(code: "007", name: "Volleyball", price: "700", image: "Volleyball"),
            Product(code: "008", name: "TableTennis", price: "800", image: "TableTennis"),
            Product(code: "009", name: "IceHocky", price: "800", image: "IceHocky"),
            Product(code: "010", name: "Billiard", price: "800", image: "Billiard"),
        ]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


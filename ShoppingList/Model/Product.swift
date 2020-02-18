//
//  Product.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 30/05/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

struct Product {
    var name: String?
    var describe: String?
    var name2: String?
    
    func getName2() -> String{
        return name2 ?? "Emptey"
    }
    mutating func getName(name: String) -> String {
        
        name2 = name
        return name
    }
 
    func getDescribe(describe: String) -> String {
        
        return describe
    }

}

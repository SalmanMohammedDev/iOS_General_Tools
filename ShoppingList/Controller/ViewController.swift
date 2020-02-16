//
//  ViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 30/05/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
   var product = Product()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nameButton(_ sender: UIButton) {
        let enterdName = nameField.text
      //  var name = nameLabel.text
        nameField.endEditing(true)

        nameLabel.text = product.getName(name: enterdName!)
    }
    
}


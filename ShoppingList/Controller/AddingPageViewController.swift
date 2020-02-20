//
//  ViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 30/05/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class AddingPageViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!

    @IBOutlet weak var decription: UITextField!
    
    
   var product = Product()
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func nameButton(_ sender: UIButton) {
        let enterdName = nameField.text
      //  var name = nameLabel.text
       

        
        nameField.text = product.getName(name: enterdName!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        

    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//           if segue.identifier == "goToResult" {
//               let destinationVC = segue.destination as! ShoppingListPageViewController
//            destinationVC.productName = product.getName2()
//
////               destinationVC.bmiAdvice = calculatorBrain.getAdvice()
////               destinationVC.bmiColor = calculatorBrain.getColor()
//
//           }
//       }
    
}


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
   

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
              var charIndex = 0.0
              let textTitle = "SuperApp💥"
              for latter in textTitle {
                  print("-")
                  print(0.1 * charIndex)
                  print(latter)
                  Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                      self.titleLabel.text?.append(latter)

                  }
                  charIndex += 1
              }
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


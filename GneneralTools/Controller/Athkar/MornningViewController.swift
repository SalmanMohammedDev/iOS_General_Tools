//
//  MornningViewController.swift
//  GeneralTools
//
//  Created by Salman Mohammed on 26/08/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit



class MornningViewController: UIViewController {
    
    var customButton = CustomButtons()
    
    var athkerClass = athkarFunction()
    
  
    @IBOutlet weak var labelOfAtkar: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
       labelOfAtkar.text = athkerClass.athkarArray[athkerClass.athkarArray.count - 1]
       
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
  
        athkerClass.athkarFunctionNext()
        labelOfAtkar.text = athkerClass.athkarText

    }
    
    @IBAction func prevButton(_ sender: UIButton) {

        athkerClass.athkarFunctionPrev()
        labelOfAtkar.text = athkerClass.athkarText
       
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

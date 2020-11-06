//
//  AthkarPageViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 10/08/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class AthkarPageViewController: UIViewController {

   
    @IBOutlet weak var collectoinButton: CustomButtons!
    @IBOutlet weak var sleepButton: CustomButtons!
    @IBOutlet weak var nightButton: CustomButtons!
    @IBOutlet weak var prayingButton: CustomButtons!
    @IBOutlet weak var afterPrayingButton: CustomButtons!
    
    @IBOutlet weak var morningButton: CustomButtons!
    override func viewDidLoad() {
        super.viewDidLoad()

        morningButton.setupButton()
        collectoinButton.setupButton()
        sleepButton.setupButton()
        nightButton.setupButton()
        prayingButton.setupButton()
        afterPrayingButton.setupButton()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func morningButton(_ sender: CustomButtons) {
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

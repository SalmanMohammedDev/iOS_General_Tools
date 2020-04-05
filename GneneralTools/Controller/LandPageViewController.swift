//
//  LandPageViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 10/08/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class LandPageViewController: UIViewController {
    
    
    @IBOutlet weak var LandTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.LandTitle.text?.removeAll()

         var charIndex = 0.0
                let textTitle = "SuperApp💥"
                for latter in textTitle {
                    print("-")
                    print(0.1 * charIndex)
                    print(latter)
                    Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                        self.LandTitle.text?.append(latter)
        
                    }
                    charIndex += 1
                }

        // Do any additional setup after loading the view.
    }
    @IBAction func GoToWeaher(_ sender: UIButton) {
    }
    
    @IBAction func GoToPomodoro(_ sender: UIButton) {
    }
    @IBAction func GoToAthkar(_ sender: UIButton) {
    }
    @IBAction func GoToVAT(_ sender: UIButton) {
    }
    @IBAction func GoToShoppingPage(_ sender: UIButton) {
        
        
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

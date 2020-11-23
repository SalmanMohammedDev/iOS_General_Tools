//
//  WhatsAppPageViewController.swift
//  GeneralTools
//
//  Created by Salman Mohammed on 07/04/1442 AH.
//  Copyright © 1442 Salman Mohammed. All rights reserved.
//

import UIKit

class WhatsAppPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var phoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func chatButton(_ sender: UIButton) {
        AddingPhoneNumber()
        phoneNumber.text = "Ex.05xxxxxxxx"
    }
    func AddingPhoneNumber() {
        if phoneNumber.text != "" && phoneNumber.text != nil {
            let number = phoneNumber.text!
            guard let url = URL(string: "https://api.whatsapp.com/send?phone=+966\(number)") else { return }
            UIApplication.shared.open(url)
                
            }
        }
   
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




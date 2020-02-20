//
//  AddProductViewController.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 26/06/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class AddProductViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var shoppingListOutlet: UILabel!
    @IBOutlet weak var addProductButtonOutlet: UIButton!
    @IBOutlet weak var shoppingTable: UITableView!
    @IBOutlet weak var productTextField: UITextField!
    
    var productsArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        addProductButtonOutlet.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        addProductButtonOutlet.layer.cornerRadius = 20
        addProductButtonOutlet.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        shoppingListOutlet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shoppingListOutlet.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        
        
        if let data = UserDefaults.standard.value(forKey: "productsArray") as? [String] {
            productsArray = data
        }
        shoppingTable.delegate = self
        shoppingTable.dataSource = self
    }
    
    @IBAction func addProductButton(_ sender: UIButton) {
        
        insertNewProductTitle()
    }
    func insertNewProductTitle() {
        if productTextField.text != "" && productTextField.text != nil {
            let entry = productTextField.text!
            if !productsArray.contains(entry) {
                productsArray.append(entry)
                UserDefaults.standard.set(productsArray, forKey: "productsArray")
                productTextField.text = ""
                productTextField.endEditing(true)
                
            }
            shoppingTable.reloadData()
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
    
}
//MARK: - UITableViewDelegate, UITableViewDataSource
extension AddProductViewController: UITableViewDelegate, UITableViewDataSource {
    //1
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Do nothing
    }
    
    //2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    //3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = productsArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            productsArray.remove(at: indexPath.row)
            
            shoppingTable.beginUpdates()
            shoppingTable.deleteRows(at: [indexPath], with: .automatic)
            shoppingTable.endUpdates()
        }
    }
    
}

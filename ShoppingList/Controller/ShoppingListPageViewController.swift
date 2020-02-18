//
//  ShoppingListPage.swift
//  ShoppingList
//
//  Created by Salman Mohammed on 24/06/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class ShoppingListPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  

    var productName: String?
    
    @IBOutlet weak var shoppingTable: UITableView!
    
    var result = AddingPageViewController()
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shoppingTable.delegate = self
        shoppingTable.dataSource = self
        data = productName
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          return UITableViewCell()
      }
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          //Do nothing
      }

      //2
      func tableView(_ tableView: UITableView,  section: Int) -> Int {
        return data?.count ?? 0
      }

      //3
    private func tableView(_ tableView: UITableView,  indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
          cell.textLabel?.text = data
          return cell
      }
    
    
    @IBAction func addingButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)

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

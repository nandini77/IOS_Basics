//
//  DetailViewController.swift
//  MyFirstApp
//
//  Created by Nandini Venigandla on 11/13/25.
//

import UIKit

class DetailViewController: UIViewController {

    // declares variable and this holds the data from ViewController
    var itemName: String?
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets the navigation bar title
        title = "Detail"
        
        // sets the text of UILabel to the value stored in itemName
        nameLabel.text = itemName
        
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

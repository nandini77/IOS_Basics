//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Nandini Venigandla on 11/12/25.
//

import UIKit

// Defines a class called ViewController.
// Subclasses UIViewController → this means it’s a screen in your app.
// UITableViewDataSource → provides data to the table view.
// UITableViewDelegate → handles interactions like row selection.

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // array of objects and subarray represents the rows of a section
    let sectionData = [
        ["Puppy", "Adult"],
        ["Rose", "Sunflower"],
        ["Dairymilk", "Kitkat"]
    ]
    
    // Naming the sections
    let sectionNames = ["Pets", "Flowers", "Chocolates"]
    
    // UITableViewDataSource method returns the no.of rows in each section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionData[section].count  // gives the count of sections
        }
    
    // UITableViewDataSource method called for each row that will be displayed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeueReusableCell -> reuses table view cells for efficiency
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // sets the text of cell as per data given in sectionData
        cell.textLabel?.text = sectionData[indexPath.section][indexPath.row]
        
        //arrow indicator added for navigaation
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    // UITableViewDataSource method returns the no.of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionData.count
        }
    
    // UITableViewDataSource method return header title of each section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNames[section] // returns the name from sectionNames array
    }
    
    // UITableViewDelegate method called when user taps the row in table view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // retrieves the selected item text and prints
        let selectedItem = sectionData[indexPath.section][indexPath.row]
        print("Selected: \(selectedItem)")
        
        //Access to main storyboard and bundle: nil -> uses the main bundle by default
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //instantiate DetailViewController using its storyboard ID
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            
            // sets the itemName property of DetailViewController to the selected item
            detailVC.itemName = selectedItem
            
            // push the detailVC to navigation stack
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
    

    // connects a UITableView in your storyboard to the code
    @IBOutlet weak var tableViewList: UITableView!  // @IBOutlet refers to UI element and weak is used to prevent memory leak
    
    // called once when the view loads into memory
    override func viewDidLoad() {
        super.viewDidLoad()  // calls the parent class implementation
        
        // sets the delegate and datasource -> without these table view doesn't display the data or respond
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        // Register a simple UITableViewCell
        tableViewList.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}


//
//  ViewController.swift
//  iOSPractice
//
//  Created by Nandini Venigandla on 11/12/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? UITableViewCell {
                cell.textLabel?.text = "Row \(indexPath.row)"
                return cell
            }
            return  UITableViewCell()
        } else if indexPath.section == 1 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? UITableViewCell {
                cell.textLabel?.text = "Row \(indexPath.row + 10)"
                return cell
            }
            return  UITableViewCell()
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? UITableViewCell {
                cell.textLabel?.text = "Row \(indexPath.row + 100)"
                return cell
            }
            return  UITableViewCell()
        }
    return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row) Selected")
        
        let alert = UIAlertController(title: "Sample Alert", message: "Test AlertViewController WIth Row \(indexPath.row)", preferredStyle: .alert)
        present(alert, animated: true)
    }
    
    @IBOutlet weak var tableViewList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("TableView Sample")
        

        
        

    }

    
}


class TestClass {
    let a: Int = 10
    let b: Int = 18
    
    
    func addition() {
        
    }
    
    func addtion(a: Int, b: Int) {
        
    }
    
    func addtion() -> Int {
        return 0
    }
    
    func addtion(a: Int, b: Int) -> Int {
        return 0
    }
}


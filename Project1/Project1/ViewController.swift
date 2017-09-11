//
//  ViewController.swift
//  Project1
//
//  Created by Rachel Schifano on 9/10/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var picturesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // FileManager
        let fileManager = FileManager.default
        guard let path = Bundle.main.resourcePath else {
            print("There is no resource path")
            return
        }
        if let items = try? fileManager.contentsOfDirectory(atPath: path) {
            for item in items {
                if item.hasPrefix("nssl") {
                    picturesArray.append(item)
                }
            }
            print(picturesArray)
        } else {
            print("No items at this resource path")
        }
    }
    
    // MARK: TableView methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picturesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = picturesArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1: try loading the "Detail" view controller and typecasting it to be DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            // 2: success! Set its selectedImage property
            vc.selectedImage = picturesArray[indexPath.row]
            
            // 3: now push it onto the navigation controller
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


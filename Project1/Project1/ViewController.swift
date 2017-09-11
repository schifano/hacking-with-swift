//
//  ViewController.swift
//  Project1
//
//  Created by Rachel Schifano on 9/10/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
                    // load item
                    print(item)
                }
            }
        } else {
            print("No items at this resource path")
        }
    }
}


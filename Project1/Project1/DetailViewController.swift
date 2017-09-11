//
//  DetailViewController.swift
//  Project1
//
//  Created by Rachel Schifano on 9/11/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String? // when VC is first created, it wont exist yet
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
}

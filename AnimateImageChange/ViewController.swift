//
//  ViewController.swift
//  AnimateImageChange
//
//  Created by ProgrammingWithSwift on 2020/03/02.
//  Copyright © 2020 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(imageLiteralResourceName: "image1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.transition(with: self.imageView,
                          duration: 2.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.imageView.image = UIImage(imageLiteralResourceName: "image2")
        }, completion: nil)
    }
}


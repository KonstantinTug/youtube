//
//  ViewController.swift
//  Youtube-Build
//
//  Created by Macbook Pro on 29.10.2020.
//  Copyright © 2020 Kostatyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.fetchVideos()
        
    }


}


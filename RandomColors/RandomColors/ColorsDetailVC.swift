//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Fatih on 4.02.2023.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? .lightGray
    }
    
}

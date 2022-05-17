//
//  FDBaseNavigationController.swift
//  Store
//
//  Created by kangc on 2022/05/17.
//

import Foundation
import UIKit

class FDBaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        setupUI()
    }
    
    func setupUI() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationBar.barTintColor = UIColor(named: "fdRed")

    }
}

class FDBaseNavigationBar: UINavigationBar {
    
}

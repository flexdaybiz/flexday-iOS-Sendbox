//
//  FDBaseViewController.swift
//  Store
//
//  Created by inchan on 2022/05/10.
//

import Foundation
import UIKit


class FDBaseViewController: UIViewController, FDViewControllerProtocol {
    
    //typealias Parameter = [String]
    
    public var firstLuanched = true
    
    deinit {
        deallocateStamp()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        firstLuanched = false;
    }
}

//
//  IntroViewController.swift
//  AppClipExample
//
//  Created by kangc on 2022/04/05.
//

import UIKit
import SwifterSwift
import Toast_Swift

class IntroViewController: FDBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showLoading()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if firstLuanched == true {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.nextViewController()
            }
        }
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        hideLoading()
    }
    
    // Mark - Move
    
    func nextViewController() {
        enterMainViewController()
    }
    
    func enterAccountSetupViewController() {
        if let mainViewController = MainTabBarController.loadFromStoryboard() {
            let navigationController = UINavigationController(rootViewController: mainViewController)
            view.window?.rootViewController = navigationController
        }
    }
    
    func enterMainViewController() {
        if let mainViewController = MainTabBarController.loadFromStoryboard() {
            let navigationController = UINavigationController(rootViewController: mainViewController)
            navigationController.isNavigationBarHidden = true
            view.window?.rootViewController = navigationController
        }
    }
}


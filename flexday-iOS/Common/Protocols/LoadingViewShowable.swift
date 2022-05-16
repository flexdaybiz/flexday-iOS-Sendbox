//
//  LoadingViewShowable.swift
//  Store
//
//  Created by inchan on 2022/05/10.
//

import Foundation
import UIKit
import Toast_Swift

protocol LoadingViewShowable {
    func showLoading()
    func hideLoading()
}

extension LoadingViewShowable where Self: UIView {
    func showLoading() {
        makeToastActivity(.center)
    }
    
    func hideLoading() {
        hideToastActivity()
        
    }
}

extension LoadingViewShowable where Self: UIViewController {
    func showLoading() {
        view.makeToastActivity(.center)
    }
    
    func hideLoading() {
        view.hideToastActivity()
    }

}

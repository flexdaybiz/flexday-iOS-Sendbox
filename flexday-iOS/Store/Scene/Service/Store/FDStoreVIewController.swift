//
//  FDStoreVIewController.swift
//  Store
//
//  Created by inchan on 2022/05/12.
//

import Foundation
import UIKit

class FDStoreVIewController: FDBaseViewController {

}

extension FDStoreVIewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

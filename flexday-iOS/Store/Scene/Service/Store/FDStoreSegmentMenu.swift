//
//  FDStoreSegmentMenu.swift
//  Store
//
//  Created by kangc on 2022/05/18.
//

import Foundation
import UIKit

class FDStoreSegmentMenu: UIStackView {
    
    
    @IBOutlet var items: [FDStoreSegmentItem]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        items.forEach{( $0.button.addTarget(self, action: #selector(onClick(sender:)), for: .touchUpInside))}
        onClick(sender: items.first!.button)
    }
    
    @objc func onClick(sender: UIButton) {
        
        items.forEach { (item) in
            let isSelected = item.button == sender
            item.isSelected = isSelected
        }
    }
}

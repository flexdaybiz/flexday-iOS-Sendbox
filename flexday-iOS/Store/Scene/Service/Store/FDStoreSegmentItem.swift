//
//  FDStoreSegmentItemView.swift
//  Store
//
//  Created by kangc on 2022/05/18.
//

import Foundation
import UIKit

class FDStoreSegmentItem: FDBaseView {
    @IBOutlet weak var topLineView: UIView!
    @IBOutlet weak var bottomLineView: UIView!
    @IBOutlet weak var leftLineView: UIView!
    @IBOutlet weak var rightLineView: UIView!
    @IBOutlet weak var button: UIButton!
    
    var isSelected: Bool = false {
        didSet {
            topLineView.isHidden = !isSelected
            bottomLineView.isHidden = isSelected
            button.titleLabel?.textColor = isSelected ? .black : UIColor(hexString: "CCCCCC")
            
            switch tag {
            case 0:
                leftLineView.isHidden = true
                rightLineView.isHidden = !isSelected
                break
            case 1:
                leftLineView.isHidden = !isSelected
                rightLineView.isHidden = !isSelected
                break
            case 2:
                leftLineView.isHidden = !isSelected
                rightLineView.isHidden = true
                break
            default:
                leftLineView.isHidden = true
                rightLineView.isHidden = true
            }
        }
    }
}

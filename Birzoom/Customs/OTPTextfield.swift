//
//  OTPTextfield.swift
//  Birzoom
//
//  Created by Administrator on 15/09/21.
//

import UIKit

protocol OTPTFieldDelegate {
    func didPressedBackward(at tag: Int)
}

class OTPTextfield: UITextField {
    
    var bDelegate: OTPTFieldDelegate!
    
    override func deleteBackward() {
        super.deleteBackward()
        bDelegate.didPressedBackward(at: tag)
    }
    
}

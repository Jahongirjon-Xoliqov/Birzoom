//
//  Enums.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import UIKit

enum BFont: String {
    case roboto_black = "Roboto-Black"
    case roboto_black_italic = "Roboto-BlackItalic"
    case roboto_bold = "Roboto-Bold"
    case roboto_bold_italic = "Roboto-BoldItalic"
    case roboto_italic = "Roboto-Italic"
    case roboto_light = "Roboto-Light"
    case roboto_light_italic = "Roboto-LightItalic"
    case roboto_medium = "Roboto-Medium"
    case roboto_medium_italic = "Roboto-MediumItalic"
    case roboto_regular = "Roboto-Regular"
    case roboto_thin = "Roboto-Thin"
    case roboto_thinItalic = "Roboto-ThinItalic"
}

///375/812
//birzoom
enum BFontSize {
    case r15
    case r24
    case r16
}

extension CGFloat {
    
    ///screen size
    static var scSize: CGSize = UIScreen.main.bounds.size.width > 375 ? CGSize(width: 375, height: 812) : UIScreen.main.bounds.size
    
    ///design size
    static var uiSize: CGSize = CGSize(width: 375, height: 812)
    
    ///getting relative size according to screen size
    static func relative(for size: BFontSize) -> CGFloat {
        
        switch size {
        case .r15: return 15*scSize.width/uiSize.width
        case .r24: return 24*scSize.width/uiSize.width
        case .r16: return 16*scSize.width/uiSize.width
        }
        
    }
    
}

// 375 - 15
// sz  - x


enum AppLanguage: String {
    case uz = "uz"
    case ru = "ru"
    case en = "en"
}



enum TextFieldType {
    case registration
}


enum BButtonType {
    case mainGray
}


enum BImage: String {
    case topBack = "back"
    case chevBack = "lChevron"
}

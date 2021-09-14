//
//  Lang.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import Foundation

class Lang {
    
    enum Component {
        
        //welcome
        case l_welcome
        case l_welcome_title1
        case l_welcome_desc1
        case l_welcome_skip
        
        //registration
        case l_reg_signup
        case p_reg_name
        case p_reg_surename
        case p_reg_number
        case b_reg_continue
        case l_reg_signin
        case l_reg_signin_tap
        
        //otp
        case l_otp_confir_code
        case b_otp_resend
        
        
        
    }
    
    static func get(valueFor component: Component) -> String {
        
        if Cache.getAppLanguage() == .uz {
            
            switch component {
            
            
            //welcome
            case .l_welcome: return "Endi ta'lim birzumda!"
            case .l_welcome_desc1: return "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa odio ut elitsit amet, consectetur adipiscing elit."
            case .l_welcome_title1: return "Online ta'lim"
            case .l_welcome_skip: return "O'tkazib yuborish"
            
            
            //registration
            case .l_reg_signup: return "Ro'yxatdan o'tish"
            case .p_reg_name: return "Ism"
            case .p_reg_surename: return "Familiya"
            case .p_reg_number: return "+998"
            case .b_reg_continue: return "Davom Etish"
            case .l_reg_signin: return "Ro'yhatdan o'tganmisiz? Tizimga kirish"
            case .l_reg_signin_tap: return "Tizimga kirish"
                
            
            //otp
            case .l_otp_confir_code: return "Tasdiqlash kodi"
            case .b_otp_resend: return "Kodni qayta yuborish"
            
                
                
            }
            
            
            
            
        }
        
        
        if Cache.getAppLanguage() == .ru {
            return "Русский"
        }
        
        
        if Cache.getAppLanguage() == .en {
            return "English"
        }
        
        return "Unknown"
    }
    
}

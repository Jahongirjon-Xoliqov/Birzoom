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
        
        //signin
        case l_signin
        case l_signin_forget
        case p_signin_password
        
        //password revovery
        case l_pass_forget
        case l_pass_instructor
        case l_pass_signup
        
        //new password
        case p_newpass
        case p_newpass_repeat
        
        
        //lang
        case l_lang_chooseLanguage
        case b_lang_en
        case b_lang_ru
        case l_lang_helper
        case l_lang_helper_part
        
        //interests
        case l_interest
        
        
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
            
            //signin
            case .l_signin: return "Tizimga kirish"
            case .l_signin_forget: return "Parolni unutdingizmi?"
            case .p_signin_password: return "Parol"
                
                
            //password revovery
            case .l_pass_forget: return "Parolni unutdingizmi?"
            case .l_pass_instructor: return "Profilingizni tiklash uchun ro'yhatdan \no'tgan telefon nomeringizni kiriting"
            case .l_pass_signup: return "Yangi profil ochish"
                
            //new password
            case .p_newpass: return "Yangi parol"
            case .p_newpass_repeat: return "Parolni qayta kiriting"
                
                
            //lang
            case .l_lang_chooseLanguage: return "Qaysi tilni o'rganishni \nxoxlaysiz?"
            case .b_lang_en: return "Engliz tili"
            case .b_lang_ru: return "Rus tili"
            case .l_lang_helper: return "Tanlangan tilni istalgan vaqtda Sozlamalar \n orqali o'zgartirish mumkin"
            case .l_lang_helper_part: return "Sozlamalar" ///.l_lang_helper "Sozlamalar" part
                
            
            //interest
            case .l_interest: return "Sizning qiziqishlaringiz"
            
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

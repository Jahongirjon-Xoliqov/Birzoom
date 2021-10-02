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
        
        //popup
        case b_popup_buy
        
        
        //home
        case l_home
        case b_home_begin_test
        case l_home_results
        case l_home_stars
        case l_home_dictionary
        case l_home_place
        case l_home_lesson
        case l_home_news
        case l_home_videos
        
        //guide
        case l_guide
        
        //news
        case l_news
        
        //cupon
        case b_getcupon
        
        //notifications
        case l_notifications
        case l_notifications_options
        case b_notifications_return_home
        case l_notifications_teaching_satisfy
        
        //profil
        case l_profil
        case b_profil_replenish_balance
        case l_profil_certificate
        case b_profil_goal
        case l_profil_myactivity
        case l_profil_lessons
        case l_profil_homework
        case l_profil_saveds
        case b_profil_logout
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
            case .b_lang_en: return "Ingliz tili"
            case .b_lang_ru: return "Rus tili"
            case .l_lang_helper: return "Tanlangan tilni istalgan vaqtda Sozlamalar \n orqali o'zgartirish mumkin"
            case .l_lang_helper_part: return "Sozlamalar" ///.l_lang_helper "Sozlamalar" part
                
            
            //interest
            case .l_interest: return "Sizning qiziqishlaringiz"
            
            //popup
            case .b_popup_buy: return "Sotib Olish"
            
            //home
            case .l_home: return "Bosh sahifa"
            case .b_home_begin_test: return "Testni boshlash"
            case .l_home_results: return "Natijalar"
            case .l_home_stars: return "Yulduzlar"
            case .l_home_dictionary: return "Lug'at"
            case .l_home_place: return "O'rin"
            case .l_home_lesson: return "Darslar"
            case .l_home_news: return "Yangiliklar"
            case .l_home_videos: return "Video"
                
            //guide
            case .l_guide: return "Qo'llanma"
                
            //news
            case .l_news: return "Yangiliklar"
                
            //cupon
            case .b_getcupon: return "Kuponni Olish"
                
            //notifications
            case .l_notifications: return "Xabarnoma"
            ///do not add space between commas
            ///commas needed to split func
            case .l_notifications_options: return "Darsga kirdim,Darsga kira olmadim,Dars yarmida tugadi"
            case .b_notifications_return_home: return "Bosh Sahifaga Qaytish"
            case .l_notifications_teaching_satisfy: return "Ustozingizni bugungi darslaridan \nqanchalik qoniqdingiz?"
                
                
            //profil
            case .l_profil: return "Profil"
            case .b_profil_replenish_balance: return "Hisobni To'ldirish"
            case .l_profil_certificate: return "Sertifikat"
            case .b_profil_goal: return "Maqsad qoyish"
            case .l_profil_myactivity: return "Mening faoliyatim"
            case .l_profil_lessons: return "Darslar"
            case .l_profil_homework: return "Uyga vazifalar"
            case .l_profil_saveds: return "Saqlanganlar"
            case .b_profil_logout: return "Chiqish"
                
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

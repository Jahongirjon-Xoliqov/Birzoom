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
        
        //profil edit
        case l_profile_edit
        case l_profile_edit_name
        case l_profile_edit_surname
        case l_profile_edit_birthdate
        case l_profile_edit_password
        case l_profile_edit_email
        case l_profile_edit_gender
        case l_profile_edit_male
        case l_profile_edit_female
        case b_save
        case p_profile_edit_name
        case p_profile_edit_surname
        case p_profile_edit_birthdate
        case p_profile_edit_password
        case p_profile_edit_email
        case b_profile_edit_password_modify
        
        //password modify
        case p_profile_edit_oldpassword
        case p_profile_edit_newpasswod
        case p_profile_edit_repeatpassword
        
        
        //target
        case l_target
        case b_target_set
        case l_target_count
        case l_target_1time
        case l_target_3times
        case l_target_5times
        case l_target_7times
        
        case l_target_1time_desc
        case l_target_3times_desc
        case l_target_5times_desc
        case l_target_7times_desc
        
        case l_target_targetDidSet
        case l_target_canChange
        case b_confirm
        
        //logout
        case l_logout
        case l_logout_confirm
        case b_cancel
        case b_logout
        
        //settings
        case l_settings
        case l_settings_history
        case l_settings_language
        case l_settings_activities
        case l_settings_notification
        case l_settings_devices
        case l_settings_mode
        case l_settings_share
        case l_settings_aboutus
        case l_settings_faq
        case l_settings_privacy
        case l_settings_contacts
        
        //settins notifications
        case l_settings_notifications
        case b_settings_lessons
        case b_settings_news
        case b_settings_messages
        
        //settings lang
        case l_settings_appLanguage
        case l_settings_lang_uz
        case l_settings_lang_ru
        case l_settings_lang_en
        case l_settings_lang_uz_uz
        case l_settings_lang_ru_uz
        case l_settings_lang_en_uz
        
        //transactions
        case l_settings_transactions
        case l_transactions_servicepoint
        case l_transactions_terminal
        case l_transactions_card
        case l_transactions_paydate
        case l_transactions_payamount
        
        //active lesson
        case l_active_lessons
        
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
                
            //profile edit
            case .l_profile_edit: return "Profilni tahrirlash"
            case .l_profile_edit_name: return "Ism"
            case .l_profile_edit_surname: return "Familiya"
            case .l_profile_edit_birthdate: return "Tug'ilgan sana"
            case .l_profile_edit_password: return "Parol"
            case .l_profile_edit_email: return "E-mail"
            case .l_profile_edit_gender: return "Jinsi"
            case .l_profile_edit_male: return "Erkak"
            case .l_profile_edit_female: return "Ayol"
            case .b_save: return "Saqlash"
            case .p_profile_edit_name: return "Jahongirjon"
            case .p_profile_edit_surname: return "Xoliqov"
            case .p_profile_edit_birthdate: return "19.06.1997"
            case .p_profile_edit_password: return "********"
            case .p_profile_edit_email: return "jakhongirjontuit@gmail.com"
            case .b_profile_edit_password_modify: return "Parolni o'zgartirish"
            
            //password modify
            case .p_profile_edit_oldpassword: return "Eski parol 12345678"
            case .p_profile_edit_newpasswod: return "Yangi parol"
            case .p_profile_edit_repeatpassword: return "Parolni qayta kiritish"
                
            //target
            case .l_target: return "Maqsadingizni belgilang"
            case .b_target_set: return "Maqsadni belgilash"
            case .l_target_count: return "Haftada faolliklar soni"
            case .l_target_1time: return "Maqsadim oson o’rganish"
            case .l_target_3times: return "Maqsadim barqaror o’rganish"
            case .l_target_5times: return "Maqsadim faol o’rganish"
            case .l_target_7times: return "Maqsadim mashaqqatli o’rganish "
            case .l_target_1time_desc: return "Faqat bir nechta darslar va videolar"
            case .l_target_3times_desc: return "Bir qancha darslar va videolar"
            case .l_target_5times_desc: return "Ko’proq darslar va videolar"
            case .l_target_7times_desc: return "Eng ko’p darslar va videolar"
            case .l_target_targetDidSet: return "Maqsad belgilandi"
            case .l_target_canChange: return "Istalgan vaqtingiz o'zgartirishingiz mumkin."
            case .b_confirm: return "Tasdiqlash"
                
                
            //logout
            case .l_logout: return "Profildan chiqish"
            case .l_logout_confirm: return "Profildan chiqishga ishonchingiz komilmi?"
            case .b_cancel: return "Bekor qilish"
            case .b_logout: return "Chiqish"
                
            //settings
            case .l_settings: return "Sozlamalar"
            case .l_settings_history: return "To'lovlar tarixi"
            case .l_settings_language: return "Ilova tili"
            case .l_settings_activities: return "Faol mashg'ulotlar"
            case .l_settings_notification: return "Bildirishnoma"
            case .l_settings_devices: return "Faol qurilmalar"
            case .l_settings_mode: return "Qorong'ulik rejimi"
            case .l_settings_share: return "Do'stlarga ulashish"
            case .l_settings_aboutus: return "Biz haqimizda"
            case .l_settings_faq: return "FAQ"
            case .l_settings_privacy: return "Maxfiylik siyosati"
            case .l_settings_contacts: return "Kontaktlar"
                
                
            //settins notifications
            case .l_settings_notifications: return "Bildirishnoma"
            case .b_settings_lessons: return "Darslar"
            case .b_settings_news: return "Yangiliklar"
            case .b_settings_messages: return "Xabarlar"
                
                
            //settings lang
            case .l_settings_appLanguage: return "Ilova tili"
            case .l_settings_lang_uz: return "O'zbek (lotin)"
            case .l_settings_lang_en: return "English"
            case .l_settings_lang_ru: return "Pусский"
            case .l_settings_lang_uz_uz: return "O'zbekcha"
            case .l_settings_lang_ru_uz: return "Ruscha"
            case .l_settings_lang_en_uz: return "Inglizcha"
                
            case .l_settings_transactions: return "To'lovlar tarixi"
            case .l_transactions_servicepoint: return "Xizmat ko'rsatish punkti"
            case .l_transactions_terminal: return "Terminal"
            case .l_transactions_card: return "Karta"
            case .l_transactions_paydate: return "To'landi"
            case .l_transactions_payamount: return "To'lov summasi"
                
            //active lesson
            case .l_active_lessons: return "Faol mashg'ulotlar"
                
                
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
        
    static func getSettingsOptionTitles() -> [String] {
            
        [
            Lang.get(valueFor: .l_settings_history),
            Lang.get(valueFor: .l_settings_language),
            Lang.get(valueFor: .l_settings_activities),
            Lang.get(valueFor: .l_settings_notification),
            Lang.get(valueFor: .l_settings_devices),
            Lang.get(valueFor: .l_settings_mode),
            Lang.get(valueFor: .l_settings_share),
            Lang.get(valueFor: .l_settings_aboutus),
            Lang.get(valueFor: .l_settings_faq),
            Lang.get(valueFor: .l_settings_privacy),
            Lang.get(valueFor: .l_settings_contacts)
        ]
            
    }
        
    
    
}

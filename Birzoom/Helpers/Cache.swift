//
//  Cache.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import Foundation

class Cache {
    
    static let app_langauge = Keys.APP_LANGUAGE
     
    static func save(appLanguage lang: AppLanguage) {
        UserDefaults.standard.setValue(lang.rawValue, forKey: app_langauge)
    }
    
    static func getAppLanguage() -> AppLanguage {
        let lang = UserDefaults.standard.string(forKey: app_langauge)
        switch lang {
        case "uz": return .uz
        case "ru": return .ru
        case "en": return .en
        default:   return .uz
        }
    }
    
}

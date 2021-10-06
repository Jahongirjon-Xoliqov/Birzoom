//
//  Cache.swift
//  Birzoom
//
//  Created by Administrator on 13/09/21.
//

import Foundation

class Cache {
    
    static let app_langauge = Keys.APP_LANGUAGE
    static let lessons_notif = Keys.LESSONS_NOTIF
    static let news_notif = Keys.NEWS_NOTIF
    static let messages_notif = Keys.MESSAGES_NOTIF
     
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
    
    static func saveLessonNotifications(as state: Bool) {
        UserDefaults.standard.setValue(state, forKey: lessons_notif)
    }
    
    static func getLessonNotifications() -> Bool {
        UserDefaults.standard.bool(forKey: lessons_notif)
    }
    
    static func saveNewsNotifications(as state: Bool) {
        UserDefaults.standard.setValue(state, forKey: news_notif)
    }
    
    static func getNewsNotifications() -> Bool {
        UserDefaults.standard.bool(forKey: news_notif)
    }
    
    static func saveMessagesNotifications(as state: Bool) {
        UserDefaults.standard.setValue(state, forKey: messages_notif)
    }
    
    static func getMessagesNotifications() -> Bool {
        UserDefaults.standard.bool(forKey: messages_notif)
    }
    
    
}

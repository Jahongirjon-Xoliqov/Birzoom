//
//  InterestTag.swift
//  Birzoom
//
//  Created by Administrator on 16/09/21.
//

import Foundation

class InterestTag {
    
    var name: String
    var image: String
    var isSelected: Bool
    
    init() {
        name = ""
        image = ""
        isSelected = false
    }
    
    init(name: String, image: String, isSelected: Bool) {
        self.name = name
        self.image = image
        self.isSelected = isSelected
    }
    
    
    
    //temp storage
    static let tags: [InterestTag] = [
        InterestTag(name: "Hayvonlar", image: "dog", isSelected: false),
        InterestTag(name: "IT", image: "it", isSelected: false),
        InterestTag(name: "Sport", image: "basketball", isSelected: false),
        InterestTag(name: "Sayohat", image: "travel", isSelected: false),
        InterestTag(name: "Mashina", image: "car", isSelected: false),
        InterestTag(name: "Kitob", image: "book", isSelected: false),
        InterestTag(name: "Iqtisodiyot", image: "economic", isSelected: false),
        InterestTag(name: "Filmlar", image: "movie", isSelected: false),
        InterestTag(name: "O'simliklar", image: "plant", isSelected: false),
        InterestTag(name: "Raqs", image: "dancer", isSelected: false),
        InterestTag(name: "Musiqa", image: "music", isSelected: false),
        InterestTag(name: "Siyosat", image: "politic", isSelected: false),
        InterestTag(name: "Ovqatlanish", image: "burger", isSelected: false),
        InterestTag(name: "Moda", image: "dress", isSelected: false)
    ]
}

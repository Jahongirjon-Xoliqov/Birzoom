//
//  FAQTVC.swift
//  Birzoom
//
//  Created by Administrator on 08/10/21.
//

import UIKit

class FAQTVC: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = "Qanday O'quv Materiallarini Olaman"
            titleLabel.font = .font(name: .roboto_medium, size: .r18)
            titleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var expendableButton: UIButton!
    
    @IBOutlet weak var scriptLabel: UILabel! {
        didSet {
            scriptLabel.text = """
            Birzoom talabasi sifatida siz dars materiallarini bepul yuklab olishingiz va xohlagan vaqtda foydalanishingiz mumkin. Darsdan so'ng, siz yangi ko'nikmalaringizni yangilash va mashq qilishga yordam beradigan viktorina topasiz. Ingliz tili va A1 formatidagi o'zbekistonlik talabalar uchun yuklanadigan mashqlar ham mavjud.
            Barcha materiallar Lingoda mutaxassislari tomonidan CEFR standartlariga mos ravishda yaratilgan. Agar siz CEFR haqida ko'proq bilmoqchi bo'lsangiz, uni bu erda ko'ring.
            """
            scriptLabel.font = .font(name: .roboto_regular, size: .r16)
            scriptLabel.textColor = .bHomeScriptGray
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func expendableButtonTapped(_ sender: UIButton) {
        
    }
    
}

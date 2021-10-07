//
//  TransactionDetailedVC.swift
//  Birzoom
//
//  Created by Administrator on 07/10/21.
//

import UIKit

class TransactionDetailedVC: UIViewController {

    @IBOutlet weak var courseImageView: UIImageView!
    
    @IBOutlet weak var courseTitleLabel: UILabel! {
        didSet {
            courseTitleLabel.text = "IELTS Writing kursi"
            courseTitleLabel.font = .font(name: .roboto_medium, size: .r16)
            courseTitleLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var servicePointHintLabel: UILabel! {
        didSet {
            servicePointHintLabel.text = Lang.get(valueFor: .l_transactions_servicepoint)
            servicePointHintLabel.font = .font(name: .roboto_regular, size: .r14)
            servicePointHintLabel.textColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var servicePointLabel: UILabel! {
        didSet {
            servicePointLabel.text = "998989899232"
            servicePointLabel.font = .font(name: .roboto_medium, size: .r14)
            servicePointLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var terminalHintLabel: UILabel! {
        didSet {
            terminalHintLabel.text = Lang.get(valueFor: .l_transactions_terminal)
            terminalHintLabel.font = .font(name: .roboto_regular, size: .r14)
            terminalHintLabel.textColor = .bHomeNavTint
        }
    }
    
    
    @IBOutlet weak var terminalLabel: UILabel! {
        didSet {
            terminalLabel.text = "17023"
            terminalLabel.font = .font(name: .roboto_medium, size: .r14)
            terminalLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var cardHintLabel: UILabel! {
        didSet {
            cardHintLabel.text = Lang.get(valueFor: .l_transactions_card)
            cardHintLabel.font = .font(name: .roboto_regular, size: .r14)
            cardHintLabel.textColor = .bHomeNavTint
        }
    }
    
    
    @IBOutlet weak var cardLabel: UILabel! {
        didSet {
            cardLabel.text = "8600 12** **** 6517"
            cardLabel.font = .font(name: .roboto_medium, size: .r14)
            cardLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var paidDateHintLabel: UILabel! {
        didSet {
            paidDateHintLabel.text = Lang.get(valueFor: .l_transactions_paydate)
            paidDateHintLabel.font = .font(name: .roboto_regular, size: .r14)
            paidDateHintLabel.textColor = .bHomeNavTint
        }
    }
    
    
    @IBOutlet weak var paidDateLabel: UILabel! {
        didSet {
            paidDateLabel.text = "15.07.2021"
            paidDateLabel.font = .font(name: .roboto_medium, size: .r14)
            paidDateLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var amountHintLabel: UILabel! {
        didSet {
            amountHintLabel.text = Lang.get(valueFor: .l_transactions_payamount)
            amountHintLabel.font = .font(name: .roboto_regular, size: .r14)
            amountHintLabel.textColor = .bBlue
        }
    }
    
    @IBOutlet weak var amountLabel: UILabel! {
        didSet {
            amountLabel.text = "-199 000 so'm"
            amountLabel.font = .font(name: .roboto_medium, size: .r14)
            amountLabel.textColor = .bBlue
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapGestureIsTriggered(_ sender: UITapGestureRecognizer) {
        coordinateBackward(animated: false)
    }
    
    
    
    
}

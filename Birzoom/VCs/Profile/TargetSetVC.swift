//
//  TargetSetVC.swift
//  Birzoom
//
//  Created by Administrator on 05/10/21.
//

import UIKit
import LTMorphingLabel

class TargetSetVC: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var setTargetLabel: UILabel! {
        didSet {
            setTargetLabel.text = Lang.get(valueFor: .l_target)
            setTargetLabel.font = .font(name: .roboto_medium, size: .r20)
            setTargetLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var dissmisButton: UIButton! {
        didSet {
            dissmisButton.setTitle("", for: .normal)
            dissmisButton.setImage(UIImage.image(name: .dissmis), for: .normal)
            dissmisButton.tintColor = .bHomeNavTint
        }
    }
    
    @IBOutlet weak var targetLabelsSView: UIStackView! {
        didSet {
            
        }
    }
    
    @IBOutlet weak var scoreboardView: UIView! {
        didSet {
            scoreboardView.layer.masksToBounds = false
            scoreboardView.layer.cornerRadius = 16
            scoreboardView.layer.shadowColor = UIColor.bProfileShadowGray.cgColor
            scoreboardView.layer.shadowRadius = 12
            scoreboardView.layer.shadowOffset = CGSize(width: 0, height: 3)
            scoreboardView.layer.shadowOpacity = 1
        }
    }
    
    @IBOutlet weak var scorePickerView: UIPickerView!{
        didSet {
            scorePickerView.delegate = self
            scorePickerView.dataSource = self
        }
    }
    
    @IBOutlet weak var activityCountLabel: UILabel! {
        didSet {
            activityCountLabel.text = Lang.get(valueFor: .l_target_count)
            activityCountLabel.font = .font(name: .roboto_regular, size: .r20)
            activityCountLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var scoreSlider: UISlider! {
        didSet {
            scoreSlider.minimumTrackTintColor = .bBlue
            scoreSlider.thumbTintColor = .bBlue
            scoreSlider.setValue(0, animated: true)
        }
    }
    
    @IBOutlet weak var setTargetButton: UIButton! {
        didSet {
            setTargetButton.backgroundColor = .bBlue
            setTargetButton.setTitle(Lang.get(valueFor: .b_target_set), for: .normal)
            setTargetButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            setTargetButton.setTitleColor(.white, for: .normal)
            setTargetButton.clipsToBounds = true
            setTargetButton.layer.cornerRadius = 8
        }
    }
    
    var targetTitleLabel: LTMorphingLabel!
    
    var targetDescriptionLabel: LTMorphingLabel!
    
    @IBOutlet weak var finalView: UIView!
    
    @IBOutlet weak var confirmButton: UIButton! {
        didSet {
            confirmButton.backgroundColor = .bBlue
            confirmButton.setTitle(Lang.get(valueFor: .b_confirm), for: .normal)
            confirmButton.titleLabel?.font = .font(name: .roboto_regular, size: .r16)
            confirmButton.setTitleColor(.white, for: .normal)
            confirmButton.clipsToBounds = true
            confirmButton.layer.cornerRadius = 8
        }
    }
    
    @IBOutlet weak var targetImageContainerView: UIView!
    
    @IBOutlet weak var targetIsSetLabel: UILabel! {
        didSet {
            targetIsSetLabel.text = Lang.get(valueFor: .l_target_targetDidSet)
            targetIsSetLabel.font = .font(name: .roboto_medium, size: .r18)
            targetIsSetLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var targetSetDescLabel: UILabel! {
        didSet {
            targetSetDescLabel.text = "q\nq"
            targetSetDescLabel.font = .font(name: .roboto_regular, size: .r18)
            targetSetDescLabel.textColor = .bHomeScriptGray
        }
    }
    
    @IBOutlet weak var canChangeLabel: UILabel! {
        didSet {
            canChangeLabel.text = Lang.get(valueFor: .l_target_canChange)
            canChangeLabel.font = .font(name: .roboto_regular, size: .r16)
            canChangeLabel.textColor = .bHomeScriptGray
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        targetTitleLabel = LTMorphingLabel()
        targetTitleLabel.text = Lang.get(valueFor: .l_target_1time)
        targetTitleLabel.font = .font(name: .roboto_medium, size: .r18)
        targetTitleLabel.textColor = .bBlack
        targetTitleLabel.morphingDuration = 0.1
        targetTitleLabel.morphingEffect = .scale
        targetTitleLabel.morphingEnabled = true
        
        targetDescriptionLabel = LTMorphingLabel()
        targetDescriptionLabel.text = Lang.get(valueFor: .l_target_1time_desc)
        targetDescriptionLabel.font = .font(name: .roboto_regular, size: .r16)
        targetDescriptionLabel.textColor = .bHomeScriptGray
        targetDescriptionLabel.morphingDuration = 0.1
        targetDescriptionLabel.morphingEffect = .scale
        targetDescriptionLabel.morphingEnabled = true
        targetLabelsSView.addArrangedSubview(targetTitleLabel)
        targetLabelsSView.addArrangedSubview(targetDescriptionLabel)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        targetImageContainerView.clipsToBounds = true
        targetImageContainerView.layer.cornerRadius = targetImageContainerView.frame.height/2
    }
    
    
    @IBAction func dissmisButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
    @IBAction func setTargetButtonTapped(_ sender: UIButton) {
        let row = scorePickerView.selectedRow(inComponent: 0)
        if row == 0 {
            targetSetDescLabel.text?.setTargetFor(days: 1)
        }
        if row == 1 {
            targetSetDescLabel.text?.setTargetFor(days: 3)
        }
        if row == 2 {
            targetSetDescLabel.text?.setTargetFor(days: 5)
        }
        if row == 3 {
            targetSetDescLabel.text?.setTargetFor(days: 7)
        }
        
        scrollView.scrollRectToVisible(finalView.frame, animated: true)
        
    }
    
    @IBAction func scoreSliderChanged(_ sender: UISlider) {
        
        let row = Int(scoreSlider.value*3)
        scorePickerView.selectRow(row, inComponent: 0, animated: true)
        
        //let a = Int(sender.value * 100)/4
        
        if !sender.isTracking {
            
            let roww = scorePickerView.selectedRow(inComponent: 0)
            if roww == 0 {
                
                targetTitleLabel.pause()
                targetDescriptionLabel.pause()
                targetTitleLabel.text = Lang.get(valueFor: .l_target_1time)
                targetDescriptionLabel.text = Lang.get(valueFor: .l_target_1time_desc)
                targetTitleLabel.updateProgress(progress: 0.1)
                targetDescriptionLabel.updateProgress(progress: 0.1)
            }
            if roww == 1 {
                
                targetTitleLabel.pause()
                targetDescriptionLabel.pause()
                targetTitleLabel.text = Lang.get(valueFor: .l_target_3times)
                targetDescriptionLabel.text = Lang.get(valueFor: .l_target_3times_desc)
                targetTitleLabel.updateProgress(progress: 0.1)
                targetDescriptionLabel.updateProgress(progress: 0.1)
            }
            if roww == 2 {
                
                targetTitleLabel.pause()
                targetDescriptionLabel.pause()
                targetTitleLabel.text = Lang.get(valueFor: .l_target_5times)
                targetDescriptionLabel.text = Lang.get(valueFor: .l_target_5times_desc)
                targetTitleLabel.updateProgress(progress: 0.1)
                targetDescriptionLabel.updateProgress(progress: 0.1)
            }
            if roww == 3 {
                
                targetTitleLabel.pause()
                targetDescriptionLabel.pause()
                targetTitleLabel.text = Lang.get(valueFor: .l_target_7times)
                targetDescriptionLabel.text = Lang.get(valueFor: .l_target_7times_desc)
                targetTitleLabel.updateProgress(progress: 0.1)
                targetDescriptionLabel.updateProgress(progress: 0.1)
            }
        }
        
        
    }
    
    @IBAction func confirmButtonTapped(_ sender: UIButton) {
        coordinateBackward(animated: false)
    }
    
    
    
}


extension TargetSetVC: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        4
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        scoreboardView.frame.height - 50
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {

        //let scoreLabel = UILabel(frame: CGRect(x: 0, y: 0, width: scoreboardView.frame.width, height: scoreboardView.frame.height))

        let scoreLabel = view as? UILabel ?? UILabel()
        scoreLabel.backgroundColor = .bHomeNavBackground
        scoreLabel.font = .font(name: .roboto_bold, size: .r80)
        scoreLabel.textColor = .black
        scoreLabel.textAlignment = .center
        
        if row == 0 {
            scoreLabel.text = "1"
        }
        if row == 1 {
            scoreLabel.text = "3"
        }
        if row == 2 {
            scoreLabel.text = "5"
        }
        if row == 3 {
            scoreLabel.text = "7"
        }
        
        
        return scoreLabel

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        scoreSlider.setValue(Float(row)/3, animated: true)
        targetTitleLabel.pause()
        targetDescriptionLabel.pause()
        
        if row == 0 {
            targetTitleLabel.text = Lang.get(valueFor: .l_target_1time)
            targetDescriptionLabel.text = Lang.get(valueFor: .l_target_1time_desc)
        }
        if row == 1 {
            targetTitleLabel.text = Lang.get(valueFor: .l_target_3times)
            targetDescriptionLabel.text = Lang.get(valueFor: .l_target_3times_desc)
        }
        if row == 2 {
            targetTitleLabel.text = Lang.get(valueFor: .l_target_5times)
            targetDescriptionLabel.text = Lang.get(valueFor: .l_target_5times_desc)
        }
        if row == 3 {
            targetTitleLabel.text = Lang.get(valueFor: .l_target_7times)
            targetDescriptionLabel.text = Lang.get(valueFor: .l_target_7times_desc)
        }
        
        targetTitleLabel.updateProgress(progress: 0.1)
        targetDescriptionLabel.updateProgress(progress: 0.1)
        
    }
    
    
}

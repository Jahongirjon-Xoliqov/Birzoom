//
//  ActiveSessionsVC.swift
//  Birzoom
//
//  Created by Administrator on 11/10/21.
//

import UIKit

class ActiveSessionsVC: UIViewController {

    @IBOutlet weak var backButton: UIButton! {
        didSet {
            backButton.design(as: .backBlue)
        }
    }
    
    @IBOutlet weak var activeSessionsLabel: UILabel! {
        didSet {
            activeSessionsLabel.designAsTopTitle()
            activeSessionsLabel.text = Lang.get(valueFor: .l_activeSessions)
        }
    }
    
    @IBOutlet weak var yourDeviceLabel: UILabel! {
        didSet {
            yourDeviceLabel.text = Lang.get(valueFor: .l_activeSessions_yourDevice)
            yourDeviceLabel.font = .font(name: .roboto_regular, size: .r12)
            yourDeviceLabel.textColor = .bBlue
        }
    }
    
    @IBOutlet weak var deviceNameLabel: UILabel! {
        didSet {
            
            deviceNameLabel.text = UIDevice.modelName + ", iOS " + UIDevice.current.systemVersion
            deviceNameLabel.font = .font(name: .roboto_medium, size: .r16)
            deviceNameLabel.textColor = .bBlack
        }
    }
    
    @IBOutlet weak var ipaddressLabel: UILabel! {
        didSet {
            ipaddressLabel.text = getIP()
            ipaddressLabel.font = .font(name: .roboto_regular, size: .r14)
            ipaddressLabel.textColor = .bHomeScriptGray
        }
    }
    
    @IBOutlet weak var endOtherSessionsButton: UIButton! {
        didSet {
            endOtherSessionsButton.setTitle(Lang.get(valueFor: .b_activeSessions_endOtherSessions), for: .normal)
            endOtherSessionsButton.setTitleColor(.bRed, for: .normal)
            endOtherSessionsButton.titleLabel?.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var endDescriptionLabel: UILabel! {
        didSet {
            endDescriptionLabel.text = Lang.get(valueFor: .l_activeSessions_endSessonDescription)
            endDescriptionLabel.textColor = .bHomeScriptGray
            endDescriptionLabel.font = .font(name: .roboto_regular, size: .r14)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigateBackward()
    }
    
    
    
    
    fileprivate func getIP()-> String? {

        var address: String?
        var ifaddr: UnsafeMutablePointer<ifaddrs>? = nil
        if getifaddrs(&ifaddr) == 0 {

            var ptr = ifaddr
            while ptr != nil {
                defer { ptr = ptr?.pointee.ifa_next } // memory has been renamed to pointee in swift 3 so changed memory to pointee

                let interface = ptr?.pointee
                let addrFamily = interface?.ifa_addr.pointee.sa_family
                if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {

                    let name: String = String(cString: (interface?.ifa_name)!)
                        // String.fromCString() is deprecated in Swift 3. So use the following code inorder to get the exact IP Address.
                    if name == "en0" {
                        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                        getnameinfo(interface?.ifa_addr, socklen_t((interface?.ifa_addr.pointee.sa_len)!), &hostname, socklen_t(hostname.count), nil, socklen_t(0), NI_NUMERICHOST)
                                address = String(cString: hostname)
                    }
                
                }
                
            }
            freeifaddrs(ifaddr)
          }
        
        return address
    }
    
}

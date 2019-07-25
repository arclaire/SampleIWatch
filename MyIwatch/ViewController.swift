//
//  ViewController.swift
//  MyIwatch
//
//  Created by Lucy PermataSari on 23/07/19.
//  Copyright © 2019 Lucy PermataSari. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    let sharedDefaults =
        UserDefaults(suiteName: "Cy.MyIwatch")
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (granted, error) in
            if granted {
                print("yes")
            } else {
                print("No")
            }
        }
        
        if let _ = sharedDefaults?.double(forKey: "timeDelay") {
           
        } else {
            sharedDefaults?.set(10.0, forKey: "timeDelay")
           
        }
        
        lblValue.text =
            sharedDefaults?.double(forKey: "timeDelay").description
    }


    func setNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.subtitle = "sample notification"
        content.body = "test"
     
        // 2
        let imageName = "applelogo"
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        
        content.attachments = [attachment]
        
        // 3
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
        // 4
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}


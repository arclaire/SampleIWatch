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
        UserDefaults(suiteName: "UserInfo")
    
    var appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lblValue.text =
            sharedDefaults?.double(forKey: "timeDelay").description
       
    }


    @IBAction func sendNotification(_ sender: Any) {
        self.appDelegate?.scheduleNotification(notificationType: "any")
    
    }
    
    
    func setNotification() {
        debugPrint("SEND")
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.subtitle = "sample notification"
        content.body = "test"
        let imageName = "logoApps"
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}


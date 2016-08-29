//
//  ViewController.swift
//  Project21
//
//  Created by Jeffrey Eng on 8/29/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func registerLocal(sender: AnyObject) {
        
        let notificationSettings = UIUserNotificationSettings(forTypes: [.Alert, .Badge, .Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(notificationSettings)
        
    }

    @IBAction func scheduleLocal(sender: AnyObject) {
        
        let notification = UILocalNotification()
        notification.fireDate = NSDate(timeIntervalSinceNow: 5)
        notification.alertBody = "You have a notification! View it now!"
        notification.alertAction = "find out what is so important"
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.userInfo = ["CustomField1": "Boomshakalaka!"]
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
        
        // checks if user has given permission for receiving notifications and handles scenario where user has not given permissions
        guard let settings = UIApplication.sharedApplication().currentUserNotificationSettings() else { return }
        
        if settings.types == .None {
            let ac = UIAlertController(title: "Unable to schedule", message: "Permission to allow scheduling of notifications has not been given or has not been prompted to user yet.", preferredStyle: .Alert)
            ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(ac, animated: true, completion: nil)
         
            return
        }
        
        // Local notification created with specific properties and called
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


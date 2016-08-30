# LocalNotifications
Repo following Project 21: Local notifications with UILocationNotification.  The goal is to understand how to create local notifications and handling user response to those notifications.

## Concepts Learned/Practiced
* Prompting for permission to send user local app notifications
* Creating local notifications
  * Example

  ```Swift

  // Create instance of UILocalNotification class object
  let notification = UILocalNotification()

  // Access properties on the instance
  notification.fireDate = NSDate(timerIntervalSinceNow: 5)
  notification.alertBody = "Some string for the notification text"
  notification.alertAction = "to view because it is important!"
  notification.soundName = UILocalNotificationDefaultSoundName
  notification.userInfo = ["CustomField1": "Swift for the win!"]

  // Pass the object created to the scheduleLocalNotification method
  UIApplication.sharedApplication().scheduleLocalNotification(notification)

  ```

* Handling cases where:
  * User swipes on the notification from the lock screen
  * Notification is sent while the user is within the app
* Use of ```guard let```
  * Example

  ```Swift

  guard let settings = UIApplication.sharedApplication().currentUserNotificationSettings() else { return }

  if settings.types == .None {
    // code here to present an alert
  }
  ```

## Attributions
[Project 21: Local Notifications with UILocalNotification](https://www.hackingwithswift.com/read/21/overview)

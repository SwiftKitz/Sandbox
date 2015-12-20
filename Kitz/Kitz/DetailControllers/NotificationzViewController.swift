//
//  NotificationzViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit
import Notificationz


class NotificationzViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let nsCenter = NSNotificationCenter.defaultCenter()
        let NC = NotificationCenterAdapter(notificationCenter: nsCenter)
        
        NC.post("hello, world!")
    }
}

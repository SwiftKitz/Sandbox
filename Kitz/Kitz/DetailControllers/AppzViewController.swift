//
//  AppzViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit
import Appz


class AppzViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Appz"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let settingsButton = UIButton(type: .System)
        settingsButton.setTitle("Messages", forState: .Normal)
        settingsButton.addTarget(self, action: "openMessagesPressed", forControlEvents: .TouchUpInside)
        settingsButton.sizeToFit()
        
        settingsButton.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        settingsButton.autoresizingMask = [
            .FlexibleBottomMargin,
            .FlexibleTopMargin,
            .FlexibleLeftMargin,
            .FlexibleRightMargin,
        ]
        
        view.addSubview(settingsButton)
    }
    
    func openMessagesPressed() {
        
        let app = UIApplication.sharedApplication()
        app.open(Applications.Messages(), action: .SMS(phone: "1234"))
    }
}

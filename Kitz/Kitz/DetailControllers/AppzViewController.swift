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

    override func viewDidLoad() {
        super.viewDidLoad()

        let app = UIApplication.sharedApplication()
        let result = app.canOpen(Applications.AppSettings())
    }
}

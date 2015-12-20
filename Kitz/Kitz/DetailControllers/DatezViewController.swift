//
//  DatezViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit
import Datez

class DatezViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let date = NSDate().gregorian + 5.days
    }
}

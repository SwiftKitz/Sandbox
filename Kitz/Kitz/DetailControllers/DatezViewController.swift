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

    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Datez"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let date = NSDate().gregorian + 5.days
    }
}

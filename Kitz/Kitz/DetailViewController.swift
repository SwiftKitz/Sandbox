//
//  DetailViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailItem: AnyObject? {
        didSet { viewController = detailItem as! UIViewController }
    }
    
    var viewController: UIViewController! {
        didSet { configureView() }
    }

    func configureView() {
        
        view.subviews.forEach { $0.removeFromSuperview() }
        
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
    }
}


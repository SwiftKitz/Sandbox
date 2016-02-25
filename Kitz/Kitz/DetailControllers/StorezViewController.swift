//
//  StorezViewController.swift
//  Kitz
//
//  Created by Mazyad Alabduljaleel on 12/19/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import UIKit
import Storez


class StorezViewController: UIViewController {

    
    init() {
        super.init(nibName: nil, bundle: nil)
        title = "Storez"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sampleKey = Key<GlobalNamespace, Int?>(id: "sample", defaultValue: nil)
        let store = UserDefaultsStore(suite: "io.kitz.kitz")
        
        var result: Int? = nil
        
        result = store.get(sampleKey)
        store.set(sampleKey, value: 55)
        result = store.get(sampleKey)
    }
}

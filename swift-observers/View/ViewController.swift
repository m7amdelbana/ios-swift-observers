//
//  ViewController.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Implementation
        
        let bobby = Children(age: 10)
        let mommy = Parent()
        
        bobby.age.addObserver(mommy) { newAge in
            print("Let's throw a birthday party")
            mommy.onValueChanged(bobby.age.value)
        }
        
        bobby.isGraduationDay.addObserver(mommy) { isGraduationDay in
            print("Let's throw a graduation party")
            mommy.onValueChanged(bobby.isGraduationDay.value)
        }
        
        bobby.age.value = 11
        bobby.isGraduationDay.value = true
    }
}


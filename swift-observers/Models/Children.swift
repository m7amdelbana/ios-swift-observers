//
//  Children.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

struct Children {
    
    var age: Observable<Int>
    var isGraduationDay: Observable<Bool>

    init(age: Int) {
        self.age = Observable(value: age)
        self.isGraduationDay = Observable(value: false)
    }
}


//
//  Parent.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

struct Parent: ObserverProtocol {

    var id = 123
    
    func onValueChanged(_ value: Any?) {
        print("onValueChanged: \(String(describing: value))")
    }
}

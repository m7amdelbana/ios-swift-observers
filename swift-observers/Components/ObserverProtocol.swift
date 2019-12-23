//
//  ObserverProtocol.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

protocol ObserverProtocol {

    var id: Int { get set }
    
    func onValueChanged(_ value: Any?)
}

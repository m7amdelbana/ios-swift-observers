//
//  ObservableProtocol.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

protocol ObservableProtocol: class {
    
    var observers : [ObserverProtocol] { get set }

    func addObserver(_ observer: ObserverProtocol)
    func removeObserver(_ observer: ObserverProtocol)
    func notifyObservers(_ observers: [ObserverProtocol])
}

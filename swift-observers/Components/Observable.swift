//
//  Observable.swift
//  swift-observers
//
//  Created by Mohamed Elbana on 12/23/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

class Observable<T> {

    typealias CompletionHandler = ((T) -> Void)

    var value: T {
        didSet {
            self.notifyObservers(self.observers)
        }
    }

    var observers: [Int : CompletionHandler] = [:]

    init(value: T) {
        self.value = value
    }

    func addObserver(_ observer: ObserverProtocol, completion: @escaping CompletionHandler) {
        self.observers[observer.id] = completion
    }

    func removeObserver(_ observer: ObserverProtocol) {
        self.observers.removeValue(forKey: observer.id)
    }

    func notifyObservers(_ observers: [Int : CompletionHandler]) {
        observers.forEach({ $0.value(value) })
    }

    deinit {
        observers.removeAll()
    }
}

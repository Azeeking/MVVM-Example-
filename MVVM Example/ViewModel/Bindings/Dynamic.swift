//
//  Dynamic.swift
//  MVVM Example
//
//  Created by Azik on 01.02.2023.
//

import Foundation

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener : Listener?
    
    func bind(_ listener: Listener?){
        self.listener = listener
    }
    
    var value : T {
        didSet {
            listener?(value)
        }
    }
    init(_ v : T) {
        value = v
    }
}

//
//  Audience.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

import Foundation

final class Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }

    func buy(_ ticket: Ticket) -> Int {
        return bag.hold(ticket)
    }
}

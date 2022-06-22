//
//  Audience.swift
//  Object
//
//  Created by 조민호 on 2022/05/04.
//

final class Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Int {
        bag.hold(ticket: ticket)
    }
}

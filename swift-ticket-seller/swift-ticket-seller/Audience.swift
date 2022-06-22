//
//  Audience.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

class Audience {
    private var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Double {
        if bag.hasInvitation {
            bag.setTicket(ticket)
            return .zero
        } else {
            bag.setTicket(ticket)
            bag.minusAmount(ticket.fee)
            return ticket.fee
        }
    }
}

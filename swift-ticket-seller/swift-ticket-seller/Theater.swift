//
//  Theater.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

struct Theater {
    private(set) var ticketSeller: TicketSeller
    
    func enter(_ audience: Audience) {
        if audience.bag.hasInvitation {
            let ticket = ticketSeller.ticketOffice.getTicket()
            audience.bag.setTicket(ticket)
        } else {
            let ticket = ticketSeller.ticketOffice.getTicket()
            audience.bag.minusAmount(ticket.fee)
            ticketSeller.ticketOffice.plusAmount(ticket.fee)
            audience.bag.setTicket(ticket)
        }
    }
}

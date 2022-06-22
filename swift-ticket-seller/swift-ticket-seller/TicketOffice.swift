//
//  TicketOffice.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

class TicketOffice {
    private var amount: Double
    private var tickets: [Ticket]
    
    init(amount: Double, tickets: [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }
    
    func sellTicketTo(_ audience: Audience) {
        plusAmount(audience.buy(ticket: getTicket()))
    }
    
    private func getTicket() -> Ticket {
        return tickets.removeFirst()
    }
    
    func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    private func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}

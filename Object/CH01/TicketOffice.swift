//
//  TicketOffice.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

import Foundation

final class TicketOffice {
    private var amount: Int
    private var tickets : [Ticket] = []
    
    init(amount: Int, tickets: Ticket...) {
        self.amount = amount
        self.tickets = tickets
    }
    
    private func getTicket() -> Ticket {
        tickets.removeFirst()
    }
    
    private func minusAmount(_ amount: Int) {
        self.amount -= amount
    }
    
    private func plusAmount(_ amount: Int) {
        self.amount += amount
    }
    
    func sellTicketTo(_ audience: Audience) {
        plusAmount(audience.buy(getTicket()))
    }
}

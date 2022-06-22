//
//  TicketOffice.swift
//  Object
//
//  Created by 조민호 on 2022/05/04.
//

final class TicketOffice {
    private var amount: Int
    private var tickets: [Ticket] = []
    
    init(amount: Int, tickets: [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }
    
    func sellTicketTo(audience: Audience) {
        plusAmount(amount: audience.buy(ticket: getTicket()))
    }
    
    private func getTicket() -> Ticket {
        tickets.removeFirst()
    }

    private func plusAmount(amount: Int) {
        self.amount += amount
    }
}

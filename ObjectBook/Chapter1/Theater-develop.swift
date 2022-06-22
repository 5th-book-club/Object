//
//  Theater-develop.swift
//  ObjectBook
//
//  Created by Red on 2022/06/22.
//

import Foundation

struct Invitation {
    private var localDateTime: Date
}

struct Ticket {
    private let fee: Int
    func getFee() -> Int {
        return fee
    }
}

final class Bag {
    private var amount: Int
    private var invitation: Invitation?
    private var ticket: Ticket?
    
    init(amount: Int){
        self.amount = amount
    }
    
    init(amount: Int, invitation: Invitation) {
        self.amount = amount
        self.invitation = invitation
    }
    
    func hold(ticket: Ticket) -> Int {
        if hasInvitation() {
            setTicket(ticket: ticket)
            return 0
        } else {
            setTicket(ticket: ticket)
            minusAmount(amount: ticket.getFee())
            return ticket.getFee()
        }
    }
    
    private func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    private func hasTicket() -> Bool {
        return ticket != nil
    }
    func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }
    
    private func minusAmount(amount: Int) {
        self.amount -= amount
    }
    private func plusAmount(amount: Int) {
        self.amount += amount
    }
}

struct Audience {
    private var bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    func buy(ticket: Ticket) -> Int {
        return bag.hold(ticket: ticket)
    }
}

class TicketOffice {
    private var amount: Int = 0
    private var tickets: [Ticket] = []
    
    init() {
        
    }
    
    func selTicketTo(audience: Audience) {
        guard let ticket = getTicket() else { return }
        plusAmount(amount: audience.buy(ticket: ticket))
    }
    
    func getTicket() -> Ticket? {
        return tickets.removeFirst()
    }
    
    func minusAmount(amount: Int) {
        self.amount -= amount
    }
    
    func plusAmount(amount: Int) {
        self.amount += amount
    }
}

class TicketSeller {
    private var ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice.selTicketTo(audience: audience)
    }
}

class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func enter(audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}


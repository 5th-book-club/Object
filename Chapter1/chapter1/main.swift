//
//  main.swift
//  TicketProject
//
//  Created by 김태현 on 2022/06/22.
//

import Foundation

struct Invitation {
    private let when: Date
}

struct Ticket {
    private let fee: Double
    
    func getFee() -> Double {
        return fee
    }
}

class Bag {
    private var amount: Double = 0.0
    private let invitation: Invitation?
    private var ticket: Ticket?
    
    init(invitaion: Invitation?, ticket: Ticket?) {
        self.invitation = invitaion
        self.ticket = ticket
    }
    
    convenience init(amount: Double) {
        self.init(invitaion: nil, ticket: nil)
        self.amount = amount
    }
    
    func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }

    func minusAmount(amount: Double) {
        self.amount -= amount
    }
}

struct Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Double {
        if bag.hasInvitation() {
            bag.setTicket(ticket: ticket)
            return 0
        } else {
            bag.setTicket(ticket: ticket)
            bag.minusAmount(amount: ticket.getFee())
            return ticket.getFee()
        }
    }
}

class TicketOffice {
    private var amount: Double
    private var ticket: [Ticket]
    
    init(amount: Double, ticket: Ticket...) {
        self.amount = amount
        self.ticket = ticket
    }
    
    func getTicket() -> Ticket {
        return ticket.removeFirst()
    }
    
    func plusAmount(amount: Double) {
        self.amount += amount
    }
}

class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice.plusAmount(amount: audience.buy(ticket: ticketOffice.getTicket()))
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

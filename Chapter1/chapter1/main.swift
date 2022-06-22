//
//  main.swift
//  TicketProject
//
//  Created by 김태현 on 2022/06/22.
//

import Foundation

struct Invitation {
    private let date: Date
}

struct Ticket {
    private let fee: Double
    
    func getFee() -> Double {
        return fee
    }
}

class Bag {
    private var money: Double = 0.0
    private let invitation: Invitation?
    private var ticket: Ticket?
    
    init(invitaion: Invitation?, ticket: Ticket?) {
        self.invitation = invitaion
        self.ticket = ticket
    }
    
    convenience init(money: Double) {
        self.init(invitaion: nil, ticket: nil)
        self.money = money
    }
    
    func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    func obtain(_ ticket: Ticket) {
        self.ticket = ticket
    }

    func payMoney(amount: Double) {
        self.money -= amount
    }
}

struct Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Double {
        if bag.hasInvitation() {
            bag.obtain(ticket)
            return 0
        } else {
            bag.obtain(ticket)
            bag.payMoney(amount: ticket.getFee())
            return ticket.getFee()
        }
    }
}

class TicketOffice {
    private var money: Double
    private var tickets: [Ticket]
    
    init(amount: Double, ticket: Ticket...) {
        self.money = amount
        self.tickets = ticket
    }
    
    func getTicket() -> Ticket {
        return tickets.removeFirst()
    }
    
    func earnMoney(amount: Double) {
        self.money += amount
    }
}

class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice.earnMoney(amount: audience.buy(ticket: ticketOffice.getTicket()))
    }
}

class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func host(for audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}

//
//  main.swift
//  TicketProject
//
//  Created by 김태현 on 2022/06/22.
//

import Foundation

class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func host(for audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}

class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice.sellTo(audience: audience)
    }
}

class TicketOffice {
    private var money: Double
    private var tickets: [Ticket]
    
    init(amount: Double, ticket: Ticket...) {
        self.money = amount
        self.tickets = ticket
    }
    
    func sellTo(audience: Audience) {
        earnMoney(amount: audience.buy(ticket: getTicket()))
    }
    
    private func getTicket() -> Ticket {
        return tickets.removeFirst()
    }
    
    private func earnMoney(amount: Double) {
        self.money += amount
    }
}

class Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func buy(ticket: Ticket) -> Double {
        return bag.obtain(ticket)
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
    
    func obtain(_ ticket: Ticket) -> Double {
        if hasInvitation() {
            set(ticket)
            return 0
        } else {
            set(ticket)
            payMoney(amount: ticket.getFee())
            return ticket.getFee()
        }
    }
    
    private func hasInvitation() -> Bool {
        return invitation != nil
    }
    
    private func set(_ ticket: Ticket) {
        self.ticket = ticket
    }

    private func payMoney(amount: Double) {
        self.money -= amount
    }
}

struct Invitation {
    private let date: Date
}

struct Ticket {
    private let fee: Double
    
    func getFee() -> Double {
        return fee
    }
}

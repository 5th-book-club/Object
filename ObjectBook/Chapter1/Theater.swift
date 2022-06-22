//
//  Theater.swift
//  ObjectBook
//
//  Created by Red on 2022/06/22.
//

import Foundation

//struct Invitation {
//    private var localDateTime: Date
//}
//
//struct Ticket {
//    private let fee: Int
//    func getFee() -> Int {
//        return fee
//    }
//}
//
//final class Bag {
//    private var amount: Int
//    private var invitation: Invitation?
//    private var ticket: Ticket?
//    
//    init(amount: Int){
//        self.amount = amount
//    }
//    
//    init(amount: Int, invitation: Invitation) {
//        self.amount = amount
//        self.invitation = invitation
//    }
//    
//    func hasInvitation() -> Bool {
//        return invitation != nil
//    }
//    
//    func hasTicket() -> Bool {
//        return ticket != nil
//    }
//    func setTicket(ticket: Ticket) {
//        self.ticket = ticket
//    }
//    
//    func minusAmount(amount: Int) {
//        self.amount -= amount
//    }
//    func plusAmount(amount: Int) {
//        self.amount += amount
//    }
//}
//
//struct Audience {
//    private var bag: Bag
//    
//    init(bag: Bag) {
//        self.bag = bag
//    }
//    func getBag() -> Bag {
//        return bag
//    }
//}
//
//class TicketOffice {
//    private var amount: Int = 0
//    private var tickets: [Ticket] = []
//    
//    init() {
//        
//    }
//    
//    func getTicket() -> Ticket? {
//        return tickets.removeFirst()
//    }
//    
//    func minusAmount(amount: Int) {
//        self.amount -= amount
//    }
//    
//    func plusAmount(amount: Int) {
//        self.amount += amount
//    }
//}
//
//class TicketSeller {
//    private var ticketOffice: TicketOffice
//    
//    init(ticketOffice: TicketOffice) {
//        self.ticketOffice = ticketOffice
//    }
//    
//    func getTicketOffice() -> TicketOffice {
//        return ticketOffice
//    }
//}
//
//class Theater {
//    private var ticketSeller: TicketSeller
//    
//    init(ticketSeller: TicketSeller) {
//        self.ticketSeller = ticketSeller
//    }
//    
//    func enter(audience: Audience) {
//        if audience.getBag().hasInvitation() {
//            guard let ticket = ticketSeller.getTicketOffice().getTicket() else { return }
//            audience.getBag().setTicket(ticket: ticket)
//        } else {
//            guard let ticket = ticketSeller.getTicketOffice().getTicket() else { return }
//            audience.getBag().minusAmount(amount: ticket.getFee())
//            ticketSeller.getTicketOffice().plusAmount(amount: ticket.getFee())
//            audience.getBag().setTicket(ticket: ticket)
//        }
//    }
//}


//
//  Bag.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

class Bag {
    private(set) var amount: Double
    private(set) var invitation: Invitation?
    private(set) var ticket: Ticket?
    
    init(amount: Double) {
        self.amount = amount
    }
    
    convenience init(amount: Double, invitation: Invitation) {
        self.init(amount: amount)
        self.invitation = invitation
    }
    
    private lazy var hasInvitation: Bool = {
        return self.invitation != nil
    }()
    
    lazy var hasTicket: Bool = {
        return self.ticket != nil
    }()
    
    func hold(ticket: Ticket) -> Double {
        if hasInvitation {
            setTicket(ticket)
            return .zero
        } else {
            setTicket(ticket)
            minusAmount(ticket.fee)
            return ticket.fee
        }
    }
    
    private func setTicket(_ ticket: Ticket) {
        self.ticket = ticket
    }
    
    private func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}

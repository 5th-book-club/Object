//
//  Bag.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

final class Bag {
    private var amount: Int
    private let invitation: Invitation?
    private var ticket: Ticket?
    
    convenience init(amount: Int) {
        self.init(invitation: nil, amount: amount)
    }
    
    init(invitation: Invitation?, amount: Int) {
        self.invitation = invitation
        self.amount = amount
    }
    
    private var hasInvitation: Bool {
        return invitation != nil
    }
    
    private var hasTicket: Bool {
        return ticket != nil
    }
    
    private func setTicket(_ ticket: Ticket) {
        self.ticket = ticket
    }
    
    private func minusAmount(_ amount: Int) {
        self.amount -= amount
    }
    
    private func plusAmount(_ amount: Int) {
        self.amount += amount
    }
    
    func hold(_ ticket: Ticket) -> Int {
        setTicket(ticket)
        
        if hasInvitation {
            return 0
        } else {
            minusAmount(ticket.getFee)
            return ticket.getFee
        }
    }
}

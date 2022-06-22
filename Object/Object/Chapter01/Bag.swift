//
//  Bag.swift
//  Object
//
//  Created by 조민호 on 2022/05/03.
//

final class Bag {
    private var amount: Int
    private var invitation: Invitation?
    private var ticket: Ticket?
    
    init(amount: Int, invitation: Invitation?) {
        self.amount = amount
        self.invitation = invitation
    }
    
    convenience init(amount: Int) {
        self.init(amount: amount, invitation: nil)
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
        invitation != nil
    }
    
    private func setTicket(ticket: Ticket) {
        self.ticket = ticket
    }
    
    private func minusAmount(amount: Int) {
        self.amount -= amount
    }
}

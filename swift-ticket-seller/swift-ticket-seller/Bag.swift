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
    
    lazy var hasInvitation: Bool = {
        return self.invitation != nil
    }()
    
    lazy var hasTicket: Bool = {
        return self.ticket != nil
    }()
    
    func setTicket(_ ticket: Ticket) {
        self.ticket = ticket
    }
    
    func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
    
    func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}

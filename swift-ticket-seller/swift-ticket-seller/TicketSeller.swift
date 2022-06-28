//
//  TicketSeller.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

class TicketSeller {
    private var ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(_ audience: Audience) {
        ticketOffice.sellTicketTo(audience)
    }
}

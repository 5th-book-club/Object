//
//  TicketSeller.swift
//  Object
//
//  Created by 조민호 on 2022/05/04.
//

final class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(audience: Audience) {
        ticketOffice.sellTicketTo(audience: audience)
    }
}

//
//  TicketSeller.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

final class TicketSeller {
    private let ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func sellTo(_ audience: Audience) {
        ticketOffice.sellTicketTo(audience)
    }
}

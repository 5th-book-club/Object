//
//  Theater.swift
//  Object
//
//  Created by 조민호 on 2022/05/04.
//

final class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func enter(audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}

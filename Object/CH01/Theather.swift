//
//  Theather.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

final class Theater {
    private var ticketSeller: TicketSeller
    
    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }
    
    func enter(_ audience: Audience) {
        ticketSeller.sellTo(audience)
    }
}

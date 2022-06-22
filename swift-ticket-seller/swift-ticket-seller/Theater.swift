//
//  Theater.swift
//  swift-ticket-seller
//
//  Created by 박세웅 on 2022/06/22.
//

import Foundation

struct Theater {
    private var ticketSeller: TicketSeller
    
    func enter(_ audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}

//
//  Ticket.swift
//  Object
//
//  Created by 조민호 on 2022/05/03.
//

final class Ticket {
    private let fee: Int
    
    init(fee: Int) {
        self.fee = fee
    }
    
    func getFee() -> Int {
        fee
    }
}

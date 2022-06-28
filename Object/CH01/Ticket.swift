//
//  Ticket.swift
//  Object
//
//  Created by 김도연 on 2022/06/22.
//

final class Ticket {
    private let fee: Int
    
    init(fee: Int) {
        self.fee = fee
    }
    
    var getFee: Int {
        return fee
    }
}

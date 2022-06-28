//
//  Reservation.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

class Reservation {
    private let customer: Customer
    private let screening: Screening
    private let fee: Money
    private let audienceCount: Int
    
    init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.fee = fee
        self.audienceCount = audienceCount
    }
}

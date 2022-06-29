//
//  Reservation.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class Reservation {
    private var customer: Customer
    private var screening: Screening
    private var fee: Money
    private var audienceCount: Int
    
    init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.fee = fee
        self.audienceCount = audienceCount
    }
}

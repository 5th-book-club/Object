//
//  Movie.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

typealias Duration = Double

class Movie {
    private var title: String
    private var runningTime: Duration
    private var fee: Money
    private var discountPolicy: DiscountPolicy
    
    init(title: String, runningTime: Duration, fee: Money, discountPolicy: DiscountPolicy) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountPolicy = discountPolicy
    }
    
    func getFee() -> Money {
        return fee
    }
    
    func calculateMovieFee(screening: Screening) -> Money {
        return fee.minus(amount: discountPolicy.calculateDiscountAmount(screening: screening))
    }
}

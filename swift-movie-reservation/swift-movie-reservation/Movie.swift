//
//  Movie.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

class Movie {
    private var title: String
    private var runningTime: Int
    private(set) var fee: Money
    private var discountPolicy: DiscountPolicy
    
    init(title: String, runningTime: Int, fee: Money, discountPolicy: DiscountPolicy) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountPolicy = discountPolicy
    }
    
    func calculateMovieFee(screening: Screening) -> Money {
        return fee.minus(amount: discountPolicy.calculateDiscountAmount(screening: screening))
    }
    
    func changeDiscountPolicy(_ discountPolicy: DiscountPolicy) {
        self.discountPolicy = discountPolicy
    }
}

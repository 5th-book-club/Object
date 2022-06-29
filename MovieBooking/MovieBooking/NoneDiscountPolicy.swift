//
//  NoneDiscountPolicy.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/30.
//

class NoneDiscountPolicy: DiscountPolicy {
    override func getDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}

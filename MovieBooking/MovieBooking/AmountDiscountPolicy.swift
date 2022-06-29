//
//  AmountDiscountPolicy.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class AmountDiscountPolicy: DiscountPolicy {
    private var discountAmount: Money
    
    init(discountAmount: Money, conditions: [DiscountCondition]) {
        self.discountAmount = discountAmount
        super.init(conditions: conditions)
    }
    
    override func getDiscountAmount(screening: Screening) -> Money {
        return discountAmount
    }
}

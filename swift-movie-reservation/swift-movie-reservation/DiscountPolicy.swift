//
//  DiscountPolicy.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

class DiscountPolicy {
    private var conditions: [DiscountCondition]
    
    init(conditions: [DiscountCondition]) {
        self.conditions = conditions
    }
    
    func calculateDiscountAmount(screening: Screening) -> Money {
        var discountAmount: Money = Money.zero
        conditions.forEach({
            if $0.isSatisfiedBy(screening: screening) {
                discountAmount = getDiscountAmount(screening: screening)
                return
            }
        })
        return discountAmount
    }
    
    func getDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}

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

class PercentDiscountPolicy: DiscountPolicy {
    private var percent: Double
    
    init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
        super.init(conditions: conditions)
    }
    
    override func getDiscountAmount(screening: Screening) -> Money {
        return screening.movieFee().times(percent: percent)
    }
}

class NoneDiscountPolicy: DiscountPolicy {
    override func getDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}

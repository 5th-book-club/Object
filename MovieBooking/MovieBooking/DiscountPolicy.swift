//
//  DiscountPolicy.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class DiscountPolicy {
    private var conditions: [DiscountCondition] = []
    
    init(conditions: [DiscountCondition] = []) {
        self.conditions = conditions
    }
    
    func calculateDiscountAmount(screening: Screening) -> Money {
        for condition in conditions {
            if condition.isSatisfiedBy(screening: screening) {
                return getDiscountAmount(screening: screening)
            }
        }
        return Money.zero
    }
    
    func getDiscountAmount(screening: Screening) -> Money {
        return Money(amount: 0)
    }
}

//
//  AmountDiscountPolicy.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class AmountDiscountPolicy: DiscountPolicy {
    let conditions: [DiscountCondition]
    private let discountAmount: Money
    
    init(discountAmount: Money, conditions: DiscountCondition...) {
        self.discountAmount = discountAmount
        self.conditions = conditions
    }
    
    func getDiscountAmount(_ screening: Screening) -> Money {
        return discountAmount
    }
}

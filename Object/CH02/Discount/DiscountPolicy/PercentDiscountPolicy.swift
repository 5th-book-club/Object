//
//  PercentDiscountPolicy.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class PercentDiscountPolicy: DiscountPolicy {
    let conditions: [DiscountCondition]
    private let percent: Double
    
    init(percent: Double, conditions: DiscountCondition...) {
        self.percent = percent
        self.conditions = conditions
    }
    
    func getDiscountAmount(_ screening: Screening) -> Money {
        return screening.getMovieFee.times(percent)
    }
}

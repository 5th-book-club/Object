//
//  PercentDiscountPolicy.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class PercentDiscountPolicy: DiscountPolicy {
    private var percent: Double
    
    init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
        super.init(conditions: conditions)
    }
    
    override func getDiscountAmount(screening: Screening) -> Money {
        return screening.getMovieFee().times(percent: percent)
    }
}

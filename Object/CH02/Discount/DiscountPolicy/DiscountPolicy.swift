//
//  DiscountPolicy.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class Duration {}

// MARK: - 할인 정책이 채택하는 프로토콜

protocol DiscountPolicy {
    var conditions: [DiscountCondition] { get }
    
    func getDiscountAmount(_ screening: Screening) -> Money
    func calculateDiscountAmount(_ screening: Screening) -> Money
}

extension DiscountPolicy {
    func calculateDiscountAmount(_ screening: Screening) -> Money {
        
        if conditions.first(where: {$0.isSatisfiedBy(screening)}) == nil {
            return Money.zero
        } else {
            return getDiscountAmount(screening)
        }
    }
}

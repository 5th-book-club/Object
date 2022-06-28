//
//  DisCountCondition.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

// MARK: - 할인 조건이 채택하는 프로토콜

protocol DiscountCondition {
    func isSatisfiedBy(_ screening: Screening) -> Bool
}

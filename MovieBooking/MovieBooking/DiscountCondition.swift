//
//  DiscountCondition.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

protocol DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool
}

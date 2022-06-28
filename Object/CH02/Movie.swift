//
//  Movie.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class Movie {
    private let title: String
    private let runningTime: Duration
    private let fee: Money
    private let discountPolicy: DiscountPolicy
    
    init(title: String, runningTime: Duration, fee: Money, discountPolicy: DiscountPolicy) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountPolicy = discountPolicy
    }
    
    // MARK: - getter
    
    var getFee: Money {
        return fee
    }
    
    // MARK: - function
    
    func calculateMovieFee(_ screening: Screening) -> Money {
        return fee.minus(discountPolicy.calculateDiscountAmount(screening))
    }
}

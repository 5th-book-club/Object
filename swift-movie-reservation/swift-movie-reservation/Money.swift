//
//  Money.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

class Money {
    static let zero = Money.wons(amount: 0)
    private let amount: Double
    
    init(amount: Double) {
        self.amount = amount
    }
    
    static func wons(amount: Double) -> Money {
        return Money(amount: amount)
    }
    
    func plus(amount: Money) -> Money {
        return Money(amount: self.amount + amount.amount)
    }
    
    func minus(amount: Money) -> Money {
        return Money(amount: self.amount - amount.amount)
    }
    
    func times(percent: Double) -> Money {
        return Money(amount: amount * percent)
    }
    
    func isLessThan(other: Money) -> Bool {
        return amount < other.amount
    }
    
    func isGreaterThanOrEqual(other: Money) -> Bool {
        return amount >= other.amount
    }
}

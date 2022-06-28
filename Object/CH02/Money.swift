//
//  Money.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class Money {
    private let amount: Double
    
    init(amount: Double) {
        self.amount = amount
    }
    
    func plus(_ amount: Money) -> Money {
        return Money(amount: self.amount + amount.amount)
    }
    
    func minus(_ amount: Money) -> Money {
        return Money(amount: self.amount - amount.amount)
    }
    
    func times(_ percent: Double) -> Money {
        return Money(amount: self.amount * percent)
    }
}

extension Money {
    static let zero = Money(amount: 0)
    
    static func wons(_ amount: Double) -> Money {
        return Money(amount: amount)
    }
}

extension Money: Comparable {
    static func == (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    static func < (lhs: Money, rhs: Money) -> Bool {
        return lhs.amount < rhs.amount
    }
}

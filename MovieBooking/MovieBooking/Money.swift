//
//  Money.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class Money {
    static var `zero`: Money = Money.wons(amount: 0)
    // static declarations are already final
    
    private final var amount: Int
    
    static func wons(amount: Int) -> Money {
        return Money(amount: amount)
    }
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func plus(amount: Money) -> Money {
        return Money(amount: self.amount + amount.amount)
    }
    
    func minus(amount: Money) -> Money {
        return Money(amount: self.amount - amount.amount)
    }
    
    func times(percent: Double) -> Money {
        return Money(amount: Int(Double(self.amount) * percent))
    }
    
    func isLessThan(other: Money) -> Bool {
        return self.amount < other.amount
    }
    
    func isGreaterThanOrEqual(other: Money) -> Bool {
        return self.amount >= other.amount
    }
}

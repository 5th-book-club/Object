//
//  DiscountCondition.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

protocol DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool
}

class SequenceCondition {
    private var sequence: Int
    
    init(sequence: Int) {
        self.sequence = sequence
    }
}

extension SequenceCondition: DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool {
        return screening.isSequence(self.sequence)
    }
}

class PeriodCondition {
    private var dayOfWeek: DayOfWeek
    private var startTime: LocalTime
    private var endTime: LocalTime
    
    init(dayOfWeek: DayOfWeek, startTime: LocalTime, endTime: LocalTime) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }
}

extension PeriodCondition: DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool {
        return screening.startTime().dayOfWeek == dayOfWeek
        && startTime.compareTo(screening.startTime()) <= 0
        && endTime.compareTo(screening.startTime()) >= 0
        
    }
}





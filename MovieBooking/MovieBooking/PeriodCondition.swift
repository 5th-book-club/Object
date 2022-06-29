//
//  PeriodCondition.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

import Foundation

typealias LocalTime = DateComponents

extension LocalTime {
    private func isSameDay(_ rhs: DateComponents) -> Bool {
        if (self.year, self.month, self.date) == (rhs.year, rhs.month, rhs.date) {
            return true
        }
        return false
    }
    
    func isLessOrEqualThan(_ rhs: DateComponents) -> Bool {
        if !isSameDay(rhs) {
            return false
        }
        
        guard let lhsHour = self.hour, let lhsMin = self.minute,
              let rhsHour = rhs.hour, let rhsMin = rhs.minute else {
            return false
        }
        
        if lhsHour > rhsHour {
            return false
        }
        if lhsHour == rhsHour && lhsMin > rhsMin {
            return false
        }
        return true
    }
    
    func isGreaterOrEqualThan(_ rhs: DateComponents) -> Bool {
        if !isSameDay(rhs) {
            return false
        }
        
        guard let lhsHour = self.hour, let lhsMin = self.minute,
              let rhsHour = rhs.hour, let rhsMin = rhs.minute else {
            return false
        }
        
        if lhsHour < rhsHour {
            return false
        }
        if lhsHour == rhsHour && lhsMin < rhsMin {
            return false
        }
        return true
    }
}

class PeriodCondition: DiscountCondition {
    private var startTime: LocalTime
    private var endTime: LocalTime
    
    init(startTime: LocalTime, endTime: LocalTime) {
        self.startTime = startTime
        self.endTime = endTime
    }
    
    func isSatisfiedBy(screening: Screening) -> Bool {
        return startTime.isLessOrEqualThan(screening.getStartTime()) &&
        endTime.isGreaterOrEqualThan(screening.getStartTime())
    }
}

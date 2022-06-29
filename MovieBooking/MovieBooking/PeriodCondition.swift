//
//  PeriodCondition.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

import Foundation

enum DayOfWeek {
    case mon
    case tue
    case wed
    case thu
    case fri
    case sat
    case sun
}

typealias LocalTime = Date

class PeriodCondition: DiscountCondition {
    private var dayOfWeek: DayOfWeek
    private var startTime: LocalTime
    private var endTime: LocalTime
    
    init(dayOfWeek: DayOfWeek, startTime: LocalTime, endTime: LocalTime) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }
    
    func isSatisfiedBy(screening: Screening) -> Bool {
        return startTime <= screening.getStartTime() &&
        endTime >= screening.getStartTime()
    }
}

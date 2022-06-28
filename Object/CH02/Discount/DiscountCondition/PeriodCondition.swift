//
//  PeriodCondition.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

enum DayOfWeek {
    case mon
    case thu
    case wed
    case thur
    case fri
    case sta
}


final class PeriodCondition: DiscountCondition {
    private let dayOfWeek: DayOfWeek
    
    private let startTime: Date
    private let endTime: Date
    
    init(dayOfWeek: DayOfWeek, startTime: Date, endTime: Date) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }
    
    func isSatisfiedBy(_ screening: Screening) -> Bool {
        //대충 screening 정보가 PeriodCondition을 만족하는지 검사하는 로직
        fatalError()
    }
}

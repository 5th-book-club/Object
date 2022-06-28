//
//  LocalTime.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/29.
//

import Foundation

struct LocalTime {
    let hours: Int
    let minutes: Int
    var dayOfWeek: DayOfWeek?
    
    func compareTo(_ other: LocalTime) -> Int {
        if hours == other.hours, minutes == other.minutes {
            return 0
        }
        
        if hours > other.hours {
            return 1
        } else if hours < other.hours {
            return -1
        } else {
            return (minutes > other.minutes) ? 1 : -1
        }
    }
}

//
//  main.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/28.
//

import Foundation

let avatar = Movie(
    title: "아바타",
    runningTime: 120,
    fee: .wons(amount: 10000),
    discountPolicy: AmountDiscountPolicy(
        discountAmount: .wons(amount: 800),
        conditions: [
            SequenceCondition(sequence: 1),
            SequenceCondition(sequence: 10),
            PeriodCondition(dayOfWeek: .Mon, startTime: LocalTime(hours: 10, minutes: 0), endTime: LocalTime(hours: 11, minutes: 59)),
            PeriodCondition(dayOfWeek: .Thu, startTime: LocalTime(hours: 10, minutes: 0), endTime: LocalTime(hours: 20, minutes: 59))
        ]
    )
)

let titanic = Movie(
    title: "타이타닉",
    runningTime: 180,
    fee: .wons(amount: 11000),
    discountPolicy: PercentDiscountPolicy(
        percent: 0.1,
        conditions: [
            PeriodCondition(dayOfWeek: .Tue, startTime: LocalTime(hours: 14, minutes: 0), endTime: LocalTime(hours: 16, minutes: 59)),
            SequenceCondition(sequence: 2),
            PeriodCondition(dayOfWeek: .Thu, startTime: LocalTime(hours: 10, minutes: 0), endTime: LocalTime(hours: 13, minutes: 59))
        ]
    )
)

let starWars = Movie(
    title: "스타워즈",
    runningTime: 210,
    fee: .wons(amount: 10000),
    discountPolicy: NoneDiscountPolicy(conditions: []))

//
//  main.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

import Foundation

var avatar = Movie(title: "아바타",
                   runningTime: 120,
                   fee: Money.wons(amount: 10_000),
                   
                   discountPolicy: AmountDiscountPolicy(
                    discountAmount: Money.wons(amount: 800),
                    conditions: [
                        SequenceCondition(sequence: 1),
                        SequenceCondition(sequence: 10),
                        PeriodCondition(
                            startTime: LocalTime(
                                year: 2022, month: 3, day: 19,
                                hour: 10, minute: 0),
                            endTime: LocalTime(
                                year: 2022, month: 3, day: 19,
                                hour: 11, minute: 59))
                    ]
                   ))

var titanic = Movie(title: "타이타닉",
                    runningTime: 180,
                    fee: Money.wons(amount: 11_000),
                    discountPolicy: PercentDiscountPolicy(
                        percent: 0.1,                                                            conditions: [
                            PeriodCondition(
                                startTime: LocalTime(
                                    year: 2022, month: 4, day: 30,
                                    hour: 14, minute: 0),
                                endTime: LocalTime(
                                    year: 2022, month: 4, day: 30,
                                    hour: 16, minute: 59)),
                            SequenceCondition(sequence: 2),
                            PeriodCondition(
                                startTime: LocalTime(
                                    year: 2022, month: 4, day: 30,
                                    hour: 10, minute: 0),
                                endTime: LocalTime(
                                    year: 2022, month: 4, day: 30,
                                    hour: 13, minute: 59))
                        ]
                    ))

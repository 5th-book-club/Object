//
//  Screening.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

import Foundation

typealias LocalDateTime = Date

class Screening {
    private var movie: Movie
    private var `sequence`: Int
    private var whenScreened: LocalDateTime
    
    private init(movie: Movie, sequence: Int, whenScreened: LocalDateTime) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }
    
    func getStartTime() -> LocalDateTime {
        return whenScreened
    }
    
    func isSequence(sequence: Int) -> Bool {
        return self.sequence == sequence
    }
    
    func getMovieFee() -> Money {
        return movie.getFee()
    }
    
    func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, fee: calculateFee(audienceCount: audienceCount), audienceCount: audienceCount)
    }
    
    private func calculateFee(audienceCount: Int) -> Money {
        return movie.calculateMovieFee(screening: self).times(percent: Double(audienceCount))
    }
}

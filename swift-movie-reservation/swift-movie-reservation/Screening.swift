//
//  Screening.swift
//  swift-movie-reservation
//
//  Created by 박세웅 on 2022/06/28.
//

import Foundation

class Screening {
    private let movie: Movie
    private let sequence: Int
    private let whenScreened: LocalTime
    
    init(movie: Movie, sequence: Int, whenScreened: LocalTime) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }
    
    func isSequence(_ sequence: Int) -> Bool {
        return self.sequence == sequence
    }
    
    func startTime() -> LocalTime {
        return whenScreened
    }
    
    func movieFee() -> Money {
        return self.movie.fee
    }
    
    func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, fee: calculateFee(audienceCount: audienceCount), audienceCount: audienceCount)
    }
    
    func calculateFee(audienceCount: Int) -> Money {
        return movie.calculateMovieFee(screening: self).times(percent: Double(audienceCount))
    }
}

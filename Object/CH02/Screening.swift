//
//  Screening.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class Screening {
    private let movie: Movie
    private let sequence: Int
    private let whenScreened: Date
    
    init(movie: Movie, sequence: Int, whenScreened: Date) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }
    
    // MARK: - getter
    
    var getStartTime: Date {
        return whenScreened
    }
    
    var getMovieFee: Money {
        return movie.getFee
    }
    
    // MARK: - function
    
    func isSequence(_ sequence: Int) -> Bool {
        return self.sequence == sequence
    }
    
    func reserve(_ customer: Customer, _ audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, fee: calculateFee(audienceCount), audienceCount: audienceCount)
    }
    
    func calculateFee(_ audienceCount: Int) -> Money {
        return movie.calculateMovieFee(self).times(Double(audienceCount))
    }
}

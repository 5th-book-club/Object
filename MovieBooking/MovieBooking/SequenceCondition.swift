//
//  SequenceCondition.swift
//  MovieBooking
//
//  Created by 김태현 on 2022/06/29.
//

class SequenceCondition: DiscountCondition {
    private var sequence: Int
    
    init(sequence: Int) {
        self.sequence = sequence
    }
    
    func isSatisfiedBy(screening: Screening) -> Bool {
        return screening.isSequence(sequence: sequence)
    }
}

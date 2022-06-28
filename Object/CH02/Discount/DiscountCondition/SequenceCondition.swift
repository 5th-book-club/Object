//
//  SequenceCondition.swift
//  Object
//
//  Created by 김도연 on 2022/06/28.
//

import Foundation

final class SequenceCodition: DiscountCondition {
    private let sequence: Int
    
    init(sequence: Int) {
        self.sequence = sequence
    }
    
    func isSatisfiedBy(_ screening: Screening) -> Bool {
        return screening.isSequence(sequence)
    }
}

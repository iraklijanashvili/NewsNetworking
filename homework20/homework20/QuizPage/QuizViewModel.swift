//
//  QuizViewModel.swift
//  homework20
//
//  Created by Imac on 03.11.24.
//

import Foundation

class QuizViewModel {
        private var items: [String] = [
            "Question 1", "Question 2", "Question 3", "Question 4", "Question 5",
            "Question 6", "Question 7", "Question 8", "Question 9", "Question 10",
            "Question 11", "Question 12", "Question 13", "Question 14", "Question 15",
            "Question 16", "Question 17", "Question 18", "Question 19", "Question 20",
            "Question 21", "Question 22", "Question 23", "Question 24", "Question 25",
            "Question 26", "Question 27", "Question 28", "Question 29", "Question 30",
            "Question 31", "Question 32", "Question 33", "Question 34", "Question 35",
            "Question 36", "Question 37", "Question 38", "Question 39", "Question 40",
            "Question 41", "Question 42", "Question 43", "Question 44", "Question 45",
            "Question 46", "Question 47", "Question 48", "Question 49", "Question 50"
        ]
    var numberOfItems: Int {
        return items.count
    }
    
    func item(at index: Int) -> String {
        return items[index]
    }
}

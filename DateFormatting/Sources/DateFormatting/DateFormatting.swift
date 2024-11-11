// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class CustomDateFormatter: DateFormatterProtocol {
    
    public init() {}
    public func formatDate(from string: String) -> String? {
        let dateFormatter = Foundation.DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        if let date = dateFormatter.date(from: string) {
            dateFormatter.dateFormat = "EEEE, d MMMM yyyy"
            return dateFormatter.string(from: date)
        }
        
        return nil
    }
}

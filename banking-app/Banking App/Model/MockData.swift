//
//  MockData.swift
//  Banking App
//
//  Created by Lukas on 29/05/2025.
//

import Foundation

struct MockData {
    
    static let transactions: [Transaction] = [
        Transaction(type: .groceries,
                    recipient: "Albert Heijn",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 28))!,
                    amount: -24.95),
        Transaction(type: .entertainment,
                    recipient: "Disney+",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 28))!,
                    amount: -12.99),
        Transaction(type: .transaction,
                    recipient: "John Doe",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 27))!,
                    amount: 20.00),
        Transaction(type: .utilities,
                    recipient: "EDPnet",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 25))!,
                    amount: -35.99),
        Transaction(type: .groceries,
                    recipient: "Delhaize",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 25))!,
                    amount: -7.54),
        Transaction(type: .travel,
                    recipient: "Icelandair",
                    date: Calendar.current.date(from: DateComponents(year: 2025, month: 5, day: 24))!,
                    amount: -219.00)
    ]
    
}

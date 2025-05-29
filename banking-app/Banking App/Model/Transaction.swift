//
//  Transaction.swift
//  Banking App
//
//  Created by Lukas on 29/05/2025.
//

import Foundation

enum TransactionType: String {
    case salary = "eurosign"
    case utilities = "bolt"
    case groceries = "basket"
    case eatingOut = "fork.knife"
    case entertainment = "movieclapper"
    case travel = "airplane"
    case transaction = "arrow.left.arrow.right"
    case other = "creditcard"
}

final class Transaction: Identifiable {
    let id =  UUID()
    
    let type: TransactionType
    let recipient: String
    let date: Date
    let amount: Double
    
    init(type: TransactionType, recipient: String, date: Date, amount: Double) {
        self.type = type
        self.recipient = recipient
        self.date = date
        self.amount = amount
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: date)
    }
}

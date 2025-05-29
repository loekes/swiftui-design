//
//  TransactionCell.swift
//  Banking App
//
//  Created by Lukas on 29/05/2025.
//

import SwiftUI

struct TransactionCell: View {
    let transaction: Transaction
    
    var body: some View {
        HStack{
            ZStack {
                Rectangle()
                    .frame(width: 44, height: 44)
                    .foregroundStyle(Color("listCellIconWhite"))
                    .cornerRadius(10)
                    .padding()
                
                Image(systemName: transaction.type.rawValue)
                    .imageScale(.large)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(transaction.recipient)
                    .font(.headline)
                Text(transaction.formattedDate)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            
            Text("€ \(transaction.amount, specifier: "%.2f")")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            
        }
        .background(Color("listCellGray"))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    TransactionCell(transaction: MockData.sampleTransaction)
}

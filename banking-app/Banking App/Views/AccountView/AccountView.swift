//
//  ContentView.swift
//  Banking App
//
//  Created by Lukas on 29/05/2025.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack(alignment: .leading) {
            BankCardView(balance: 1456.52)
            
            Text("Transactions")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.leading)
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(MockData.transactions) { transaction in
                        TransactionCell(transaction: transaction)
                    }
                }
            }
        }
    }
}

#Preview {
    AccountView()
}

struct CardButton: View {
    var iconName: String
    var buttonName: String
    
    var body: some View {
        Button {
            print("tapped")
        } label: {
            VStack(spacing: 5) {
                ZStack {
                    Circle()
                        .frame(width: 44, height: 44)
                        .foregroundStyle(.black)
                        .opacity(0.3)
                    
                    Image(systemName: iconName)
                        .imageScale(.large)
                        .foregroundStyle(.white)
                }
                
                Text(buttonName)
                    .font(.caption)
                    .foregroundStyle(.white)
            }
            .padding(12)
        }
        
    }
}

struct BankCardView: View {
    var balance: Double
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("BALANCE")
                        .font(.caption)
                        .foregroundStyle(.white)
                    
                    Text("€ \(balance, specifier: "%.2f")")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                }
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            HStack {
                CardButton(iconName: "arrow.up", buttonName: "Transfer")
                CardButton(iconName: "viewfinder", buttonName: "Scan")
                CardButton(iconName: "arrow.down", buttonName: "Receive")
                
                Spacer()
            }
        }
        .frame(height: 225)
        .background(.blue.gradient)
        .cornerRadius(10)
        .padding()
    }
}

struct TransactionCell: View {    
    let transaction: Transaction
    
    var body: some View {
        HStack{
            ZStack {
                Rectangle()
                    .frame(width: 44, height: 44)
                    .foregroundStyle(.white)
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
        .background(Color("brandGray"))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

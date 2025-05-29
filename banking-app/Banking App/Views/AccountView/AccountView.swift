//
//  AccountView.swift
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
    let iconName: String
    let buttonName: String
    
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
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
    let balance: Double
    
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
                CardButton(iconName: "arrow.up", buttonName: "Transfer") {
                    print("Tapped Transfer")
                }
                
                CardButton(iconName: "viewfinder", buttonName: "Scan") {
                    print("Tapped Scan")
                }
                
                CardButton(iconName: "arrow.down", buttonName: "Receive") {
                    print("Tapped Receive")
                }
                
                Spacer()
            }
        }
        .frame(height: 225)
        .background(.blue.gradient)
        .cornerRadius(10)
        .padding()
    }
}

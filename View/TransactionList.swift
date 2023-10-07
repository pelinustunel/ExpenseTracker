//
//  TransactionList.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Pelin Üstünel on 3.10.2023.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(Array(transactionListVM.groupTransactionsByMonth()), id: \.key) { month, transactions in
                    Section {
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                    
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
        
    }()
    
    static var previews: some View {
        Group {
            
            NavigationView {
                TransactionList()
                    .bold()
            }
            NavigationView {
                TransactionList()
                    .preferredColorScheme(.dark)
                    .bold()
            }
            
        }
        .environmentObject(transactionListVM)
    }
}

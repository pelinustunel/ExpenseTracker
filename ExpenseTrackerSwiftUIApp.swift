//
//  ExpenseTrackerSwiftUIApp.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Pelin Üstünel on 3.10.2023.
//

import SwiftUI

@main
struct ExpenseTrackerSwiftUIApp: App {
    
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}

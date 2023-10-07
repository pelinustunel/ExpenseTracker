//
//  PreviewData.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Pelin Üstünel on 3.10.2023.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "01/24/2023", institution: "Bank of America", account: "Visa Bank of America", merchant: "Apple", amount: 12.99, type: "debit", categoryId: 001, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)


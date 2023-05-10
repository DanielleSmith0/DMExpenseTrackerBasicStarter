//
//  ExpenseHelper.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation

class ExpenseHelper {
    
    /**
     4.2 Create a static function called `calculateTotalSpent` that accepts an array of `Expense` and returns the total amount of money the user spent. Feel free to run the provided test to know if your code is correct.
     */
    
    static func calculateTotalSpent (expenseArr: [Expense]) -> Double {
        var total: Double = 0
        for expense in expenseArr {
            total += expense.amount
        }
        return total
    }
    
    /**
     4.2 Create a static function called `getExpensesByCategory` that accepts an array of `Expense` and returns a dictionary where each key is a category and each value is an array of `Expense` belonging to that category. Feel free to run the provided test to know if your code is correct.
     */
    
    static func getExpensesByCategory (expenseArr: [Expense]) -> Dictionary<String, Array<Expense>> {
        var expenseByCategory: [String: [Expense]] = [:]
        for expense in expenseArr {
            if expenseByCategory.keys.contains(expense.category){
                expenseByCategory[expense.category]?.append(expense)
            }
            else {
                var newArray: [Expense] = []
                newArray.append(expense)
                expenseByCategory[expense.category] = newArray
            }
        }
        return expenseByCategory
    }
}

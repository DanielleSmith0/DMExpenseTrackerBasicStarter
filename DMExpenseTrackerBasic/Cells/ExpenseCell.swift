//
//  ExpenseCell.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/28/23.
//

import UIKit

class ExpenseCell: UITableViewCell {
    
    /**
     10.1 Connect the UILabels to the code.
     */
    //Remember to set a constraint for all UI elements.
//    It only worked after giving an Id to the cell as ExpenseCell
    
    
    @IBOutlet weak var cellCategoryLabel: UILabel!
    
    @IBOutlet weak var cellExpenseLabel: UILabel!
    /**
     11.1 Have the UILabels display the title and amount of the passed`Expense`.
     */
    func set(expense: Expense) {
        cellCategoryLabel.text = expense.title
        cellExpenseLabel.text = expense.amount.formatted(.currency(code: "USD"))
    }
}

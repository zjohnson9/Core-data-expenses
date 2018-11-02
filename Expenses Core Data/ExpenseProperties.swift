//
//  ExpenseProperties.swift
//  Expenses Core Data
//
//  Created by Zac Johnson on 11/2/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import Foundation
import CoreData


extension Expense {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }
    
    @NSManaged public var name: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var amount: Double
    
}

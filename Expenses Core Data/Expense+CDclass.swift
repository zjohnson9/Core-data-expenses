//
//  Expense+CDclass.swift
//  Expenses Core Data
//
//  Created by Zac Johnson on 11/2/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import UIKit
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, amount: Double, date: Date?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Expense.entity(), insertInto: managedContext)
        
        self.name = name
        self.amount = amount
        self.date = date
        }
}

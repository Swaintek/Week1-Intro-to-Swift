//
//  Store.swift
//  ToDo
//
//  Created by David Swaintek on 8/16/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation
import UIKit

class Store: ObjectStore
{
    static let shared = Store()
    
    private init() {}

    internal var tasks = [Identity]()
    
    
    typealias Identity = ToDo

    func add(object: Identity)
        {
            self.tasks.append(object)
        }
        
    func remove(object: Identity)
        {
            self.tasks = self.tasks.filter({(task) -> Bool in
                return object.id != task.id
            })
        }
        
        func objectAtIndex(index: Int) -> Identity
        {
            return self.tasks[index]
        }
        
        func count() -> Int
        {
            return self.tasks.count
        }
        
        func allObjects() -> [Identity]
        {
            return self.tasks
        }
}

//
//  ObjectStore.swift
//  ToDo
//
//  Created by David Swaintek on 8/16/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation
import UIKit

protocol ObjectStore
{
    associatedtype Object: Identity
    var tasks: [Object] { get set }
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}



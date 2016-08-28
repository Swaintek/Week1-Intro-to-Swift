//
//  ToDo.swift
//  ToDo
//
//  Created by David Swaintek on 8/16/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation
import UIKit

class ToDo: Identity
{
    let task: String
    var id: String
    
    init(task: String)
    {
        self.task = task
        self.id = NSUUID().UUIDString
    }
}

//: Playground - noun: a place where people can play

import UIKit

protocol Identity
{
    var id: String {get set}
}

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

protocol ObjectStore
{
    associatedtype Object: Identity
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}

class Store: ObjectStore
{
    static let shared = Store()
    private init() {}
    
    typealias Object = ToDo
    
    private var tasks = [Object]()
    
    func add(object: Object)
    {
        self.tasks.append(object)
    }
    
    func remove(object: Object)
    {
        self.tasks = self.tasks.filter({(task) -> Bool in
            return object.id != task.id
        })
    }
    
    func objectAtIndex(index: Int) -> Object
    {
        return self.tasks[index]
    }
    
    func count() -> Int
    {
        return self.tasks.count
    }
    
    func allObjects() -> [Object]
    {
        return self.tasks
    }
}

let taskOne = ToDo(task: "Work out")
let taskTwo = ToDo(task: "Get groceries")

Store.shared.add(taskOne)
Store.shared.add(taskTwo)

print(Store())



























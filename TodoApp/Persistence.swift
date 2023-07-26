//
//  Persistence.swift
//  TodoApp
//
//  Created by Andi Septiadi on 25/07/23.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    static var taskPreview: PersistenceController = {
        let controller = PersistenceController(inMemory: true)
        for row in 0..<10 {
            let newTask = TaskEntity(context: controller.viewContext)
            newTask.title = "Task \(row)"
            newTask.desc = "Description for task \(row)"
            newTask.date = Date()
        }
        do {
            try controller.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return controller
    }()

    let container: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        container.viewContext
    }

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "TodoApp")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    func save() throws {
        guard viewContext.hasChanges else { return }
        try viewContext.save()
    }
    
    func delete(_ object: NSManagedObject) throws {
        viewContext.delete(object)
        try viewContext.save()
    }
}

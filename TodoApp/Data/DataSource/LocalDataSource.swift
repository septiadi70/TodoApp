//
//  LocalDataSource.swift
//  TodoApp
//
//  Created by Andi Septiadi on 27/07/23.
//

import CoreData

final class LocalDataSource: LocalDataSourceProtocol {
    private let persistenceController: PersistenceController
    
    init(persistenceController: PersistenceController) {
        self.persistenceController = persistenceController
    }
}

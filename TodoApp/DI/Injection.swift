//
//  Injection.swift
//  TodoApp
//
//  Created by Andi Septiadi on 27/07/23.
//

import Foundation

final class Injection {
    private static func provideLocalDataSource() -> LocalDataSourceProtocol {
        let persistenceController = PersistenceController()
        return LocalDataSource(persistenceController: persistenceController)
    }
}

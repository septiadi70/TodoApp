//
//  Repository.swift
//  TodoApp
//
//  Created by Andi Septiadi on 27/07/23.
//

import Foundation

final class Repository: RepositoryProtocol {
    private let local: LocalDataSourceProtocol
    
    init(localDataSource local: LocalDataSourceProtocol) {
        self.local = local
    }
}

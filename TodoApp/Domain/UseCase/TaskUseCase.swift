//
//  TaskUseCase.swift
//  TodoApp
//
//  Created by Andi Septiadi on 27/07/23.
//

import Foundation

final class TaskUseCase: TaskUseCaseProtocol {
    private let repository: RepositoryProtocol
    
    init(repository: RepositoryProtocol) {
        self.repository = repository
    }
}

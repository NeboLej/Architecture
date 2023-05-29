//
//  MVPModel.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import Foundation

struct MVPModel {
    let name: String
    let count: Int
    let isFavorit: Bool
}

extension MVPModel {
    static func getTestData() -> [MVPModel] {
        [
            MVPModel(name: "Model1", count: 10, isFavorit: true),
            MVPModel(name: "Model2", count: 20, isFavorit: false),
            MVPModel(name: "Model3", count: 30, isFavorit: true),
            MVPModel(name: "Model4", count: 11, isFavorit: true),
            MVPModel(name: "Model5", count: 15, isFavorit: false),
            MVPModel(name: "Model6", count: 119, isFavorit: false)]
    }
}

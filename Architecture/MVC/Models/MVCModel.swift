//
//  MVCModel.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import Foundation

struct MVCModel {
    let name: String
    let count: Int
    let isFavorit: Bool
}

extension MVCModel {
    static func getTestData() -> [MVCModel] {
        [
            MVCModel(name: "Model1", count: 10, isFavorit: true),
            MVCModel(name: "Model2", count: 20, isFavorit: false),
            MVCModel(name: "Model3", count: 30, isFavorit: true),
            MVCModel(name: "Model4", count: 11, isFavorit: true),
            MVCModel(name: "Model5", count: 15, isFavorit: false),
            MVCModel(name: "Model6", count: 119, isFavorit: false)]
    }
}

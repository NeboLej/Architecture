//
//  MVPViewInputDelegate.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import Foundation

protocol MVPViewInputDelegate: AnyObject {
    func setupData(with data: [MVPModel])
    func displayData(model: MVPModel)
}

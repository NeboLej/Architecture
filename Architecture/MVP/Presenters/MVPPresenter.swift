//
//  MVPPresenter.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import Foundation

class MVPPresenter {
    
    weak private var viewInputDelegate: MVPViewInputDelegate?
    
    func setupInputDelegate(delegate: MVPViewInputDelegate?) {
        viewInputDelegate = delegate
    }
    
    private func presentData(data: [MVPModel]) {
        viewInputDelegate?.setupData(with: data)
        viewInputDelegate?.displayData(model: data.randomElement()!)
    }
}

extension MVPPresenter: MVPViewOutputDelegate {
    
    func getData() {
        presentData(data: MVPModel.getTestData())
    }
    
    func saveData() {
        
    }
}

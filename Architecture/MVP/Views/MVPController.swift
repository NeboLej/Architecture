//
//  MVPController.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import UIKit

class MVPController: UIViewController {

    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var countLab: UILabel!
    @IBOutlet weak var nameLab: UILabel!
    
    private let presenter = MVPPresenter()
    private var models: [MVPModel] = []
    weak private var viewOutdutDelegate: MVPViewOutputDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setupInputDelegate(delegate: self)
        viewOutdutDelegate = presenter
        viewOutdutDelegate?.getData()
    }
    
    //MARK: - @IBAction
    @IBAction func tapButton(sender: Any) {
        viewOutdutDelegate?.getData()
    }
}

extension MVPController: MVPViewInputDelegate {
    
    func setupData(with data: [MVPModel]) {
        models = data
    }
    
    func displayData(model: MVPModel) {
        statusView.backgroundColor = model.isFavorit ? .systemPink : .systemYellow
        countLab.text = String(model.count)
        nameLab.text = model.name
    }
}

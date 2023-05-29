//
//  MVCController.swift
//  Architecture
//
//  Created by Nebo on 29.05.2023.
//

import UIKit

class MVCController: UIViewController {

    @IBOutlet weak var nameLab: UILabel!
    @IBOutlet weak var countLab: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayData(model: MVCModel) {
        nameLab.text = model.name
        countLab.text = String(model.count)
        statusView.backgroundColor = model.isFavorit ? .systemMint : .systemPink
    }
    
    func presentModel() {
        let models = MVCModel.getTestData()
        guard let model = models.randomElement() else { return }
        displayData(model: model)
    }
    
    //MARK: - @IBAction
    @IBAction func buttonTap(_ sender: Any) {
        presentModel()
    }
}

//
//  CharacterDetailViewController.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/8/23.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    init(characterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(model: characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = CharacterDetailView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

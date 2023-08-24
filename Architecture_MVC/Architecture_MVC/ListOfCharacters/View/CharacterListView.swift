//
//  CharacterListView.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 22/8/23.
//

import Foundation
import UIKit

class CharacterListView : UIView {
    let charactersTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CharacterListCellView.self, forCellReuseIdentifier: "CharacterListCellView")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)ç")
    }
    
    func setupView () {
        addSubview(charactersTableView)
        
        NSLayoutConstraint.activate([
            charactersTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            charactersTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            charactersTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            charactersTableView.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
}

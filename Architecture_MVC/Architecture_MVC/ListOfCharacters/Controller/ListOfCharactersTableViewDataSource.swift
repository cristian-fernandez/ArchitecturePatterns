//
//  ListOfCharactersTableViewDataSource.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 23/8/23.
//

import Foundation
import UIKit

final class ListOfCharactersTableViewDataSource: NSObject, UITableViewDataSource {
    
    
    
    private let tableView: UITableView
    
    private(set) var characters: [CharacterModel] = []{
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListCellView", for: indexPath) as! CharacterListCellView
        
        let character = characters[indexPath.row]
        cell.configure(model: character)
        return cell
    }
    
    func set(characters:[CharacterModel]) {
        self.characters = characters
    }
}

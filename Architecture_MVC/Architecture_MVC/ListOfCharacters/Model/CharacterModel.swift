//
//  CharacterModel.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 22/8/23.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status:  String
    let species: String
    let image: String
}

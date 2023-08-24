//
//  CharacterModelResponse.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 22/8/23.
//

import Foundation

struct CharacterModelResponse: Decodable {
    let results: [CharacterModel]
}

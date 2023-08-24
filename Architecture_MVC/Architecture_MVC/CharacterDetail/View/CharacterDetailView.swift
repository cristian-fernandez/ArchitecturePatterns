//
//  CharacterDetailView.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 24/8/23.
//

import Foundation
import UIKit

class CharacterDetailView: UIView {
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterSpecie : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView(){
        
        backgroundColor = .white
        
        addSubview(characterImageView)
        addSubview(characterName)
        addSubview(characterStatus)
        addSubview(characterSpecie)
        
        NSLayoutConstraint.activate([
            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            characterImageView.heightAnchor.constraint(equalToConstant: 200),
            characterImageView.widthAnchor.constraint(equalToConstant: 200),
            
            characterName.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 20),
            characterName.topAnchor.constraint(equalTo: characterImageView.topAnchor),
            
            characterStatus.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterStatus.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 8),
            
            characterSpecie.leadingAnchor.constraint(equalTo: characterName.leadingAnchor),
            characterSpecie.topAnchor.constraint(equalTo: characterStatus.bottomAnchor, constant: 8)
        ])
    }
    func configure(model: CharacterModel){
        self.characterName.text = model.name
        self.characterStatus.text = model.status
        self.characterSpecie.text = model.species
        self.characterImageView.kf.setImage(with: URL(string: model.image))
    }
    
}

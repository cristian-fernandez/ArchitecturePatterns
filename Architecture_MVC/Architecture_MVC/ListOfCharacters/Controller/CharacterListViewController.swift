//
//  ViewController.swift
//  Architecture_MVC
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 22/8/23.
//

import UIKit

class CharactersListViewController: UIViewController {
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = listOfCharactersAPIClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    override func loadView() {
        view = CharacterListView()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Task {
            let characters = await apiClient.getListOfCharacters()
            print("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }
}


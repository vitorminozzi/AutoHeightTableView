//
//  ViewController.swift
//  AutoHeightTableView
//
//  Created by Vitor Gomes on 19/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: AutoHTableView!
    var labelTeste: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        return cell
    }
}

extension ViewController {
    func setupLayout() {
        
        tableView = AutoHTableView()
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        labelTeste = UILabel()
        view.addSubview(labelTeste)
        labelTeste.text = "Aqui esta outro titulo"
        labelTeste.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTeste.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 20),
            labelTeste.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            labelTeste.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

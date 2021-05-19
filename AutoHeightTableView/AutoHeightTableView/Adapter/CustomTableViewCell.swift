//
//  CustomTableViewCell.swift
//  AutoHeightTableView
//
//  Created by Vitor Gomes on 19/05/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "custom"
    
    var label: UILabel!

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension CustomTableViewCell {
    func setupLayout() {
        
        label = UILabel()
        contentView.addSubview(label)
        label.text = "teste"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
    }
}

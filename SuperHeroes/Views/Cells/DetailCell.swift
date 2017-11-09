//
//  DetailCell.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell{
  
  let biographyLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = UIColor.darkGray
    label.font = UIFont(name: "Avenir-Book", size: 16)
    label.numberOfLines = 0
    return label
  }()
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Error coder on DetailCell")
  }
  
  //MARK: Initial setup
  
  fileprivate func setupViews(){
    addSubview(biographyLabel)
    
    biographyLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
    biographyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
    biographyLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
    biographyLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
  }
  
}

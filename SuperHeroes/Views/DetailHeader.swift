//
//  DetailHeader.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import UIKit

class DetailHeader: UIView{
  
  fileprivate let superheroImageView: UIImageView = {
    let iv = UIImageView()
    iv.translatesAutoresizingMaskIntoConstraints = false
    iv.contentMode = .scaleAspectFit
    return iv
  }()
  
  fileprivate let superheroNameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Avenir-Medium", size: 18)
    label.numberOfLines = 2
    label.textColor = UIColor.white
    return label
  }()
  
  fileprivate let superheroStrengthLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Avenir-Medium", size: 18)
    label.textColor = UIColor.white
    return label
  }()
  
  fileprivate let superheroUniverseLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont(name: "Avenir-Black", size: 24)
    label.textColor = UIColor.white
    label.textAlignment = .center
    return label
  }()
  
  var superhero: Superhero!{
    didSet{
      fillUI()
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Error coder on DetailHeader")
  }
  
  //MARK: Initial setup
  
  fileprivate func setupViews(){
    setupSuperheroImageView()
    setupSuperheroNameLabel()
    setupSuperheroStrengthLabel()
    setupSuperheroUniverseLabel()
  }
  
  fileprivate func setupSuperheroImageView(){
    let imageWidth: CGFloat = (UIScreen.main.bounds.width / 2) - 24
    
    addSubview(superheroImageView)
    
    superheroImageView.topAnchor.constraint(equalTo: topAnchor, constant: 24).isActive = true
    superheroImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
    superheroImageView.widthAnchor.constraint(equalToConstant: imageWidth).isActive = true
    superheroImageView.heightAnchor.constraint(equalTo: superheroImageView.widthAnchor, multiplier: 1).isActive = true
  }
  
  fileprivate func setupSuperheroNameLabel(){
    addSubview(superheroNameLabel)
    
    superheroNameLabel.centerYAnchor.constraint(equalTo: superheroImageView.centerYAnchor, constant: -16).isActive = true
    superheroNameLabel.leadingAnchor.constraint(equalTo: superheroImageView.trailingAnchor, constant: 24).isActive = true
    superheroNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
  }
  
  fileprivate func setupSuperheroStrengthLabel(){
    addSubview(superheroStrengthLabel)
    
    superheroStrengthLabel.topAnchor.constraint(equalTo: superheroNameLabel.bottomAnchor, constant: 16).isActive = true
    superheroStrengthLabel.leadingAnchor.constraint(equalTo: superheroImageView.trailingAnchor, constant: 24).isActive = true
    superheroStrengthLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
  }
  
  fileprivate func setupSuperheroUniverseLabel(){
    addSubview(superheroUniverseLabel)
    
    superheroUniverseLabel.topAnchor.constraint(equalTo: superheroImageView.bottomAnchor, constant: 16).isActive = true
    superheroUniverseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
    superheroUniverseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24).isActive = true
  }
  
  //MARK: Private methods
  
  fileprivate func fillUI(){
    switch superhero.universe{
    case .dc: backgroundColor = UIColor(red: 33/255, green: 127/255, blue: 190/255, alpha: 1.0)
    case .marvel: backgroundColor = UIColor(red: 226/255, green: 54/255, blue: 54/255, alpha: 1.0)
    }
    
    superheroImageView.image = UIImage(named: superhero.imagePath)
    superheroNameLabel.text = "Name: \(superhero.name)"
    superheroStrengthLabel.text = "Strength: \(superhero.strength)"
    superheroUniverseLabel.text = "\(superhero.universe.rawValue.uppercased())"
  }
  
}

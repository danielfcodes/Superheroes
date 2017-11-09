//
//  HomeCell.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell{
  
  fileprivate let container: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor.white
    view.layer.cornerRadius = 10
    //shadow
    view.layer.shadowColor = UIColor.black.cgColor
    view.layer.shadowOpacity = 0.5
    view.layer.shadowOffset = CGSize(width: 1, height: 1)
    view.layer.shadowRadius = 5
    return view
  }()
  
  fileprivate let superheroImageView: UIImageView = {
    let iv = UIImageView()
    iv.translatesAutoresizingMaskIntoConstraints = false
    iv.contentMode = .scaleAspectFit
    return iv
  }()
  
  fileprivate let superheroLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = UIColor.darkGray
    label.textAlignment = .center
    label.font = UIFont(name: "Avenir-Medium", size: 18)
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
    fatalError("Error coder on HomeCell")
  }
  
  //MARK: Initial setup
  
  fileprivate func setupViews(){
    setupContainer()
    setupSuperheroImageView()
    setupSuperheroLabel()
  }
  
  fileprivate func setupContainer(){
    addSubview(container)
    
    container.topAnchor.constraint(equalTo: topAnchor).isActive = true
    container.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    container.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    container.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  fileprivate func setupSuperheroImageView(){
    addSubview(superheroImageView)
    
    superheroImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    superheroImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -16).isActive = true
    superheroImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7).isActive = true
    superheroImageView.heightAnchor.constraint(equalTo: superheroImageView.widthAnchor, multiplier: 1).isActive = true
  }
  
  fileprivate func setupSuperheroLabel(){
    addSubview(superheroLabel)
    
    superheroLabel.topAnchor.constraint(equalTo: superheroImageView.bottomAnchor, constant: 8).isActive = true
    superheroLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor, constant: 8).isActive = true
    superheroLabel.trailingAnchor.constraint(equalTo: container.trailingAnchor, constant: -8).isActive = true
  }
  
  //MARK: Private methods
  fileprivate func fillUI(){
    superheroImageView.image = UIImage(named: superhero.imagePath)
    superheroLabel.text = superhero.name
  }
  
}

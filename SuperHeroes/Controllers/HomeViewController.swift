//
//  HomeViewController.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  fileprivate lazy var collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
    cv.translatesAutoresizingMaskIntoConstraints = false
    cv.backgroundColor = UIColor(red: 226/255, green: 54/255, blue: 54/255, alpha: 1.0)
    cv.delegate = self
    cv.dataSource = self
    cv.alwaysBounceVertical = true
    cv.register(HomeCell.self, forCellWithReuseIdentifier: Identifiers.mainCell)
    return cv
  }()
  
  let superheroes = Superhero.getSuperheroesData()
  
}

//MARK: Life cycle

extension HomeViewController{
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    initialSetup()
  }
  
}

//MARK: Initial setup

extension HomeViewController{
  
  fileprivate func initialSetup(){
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    setupViews()
  }
  
  fileprivate func setupViews(){
    setupCollectionView()
  }
  
  fileprivate func setupCollectionView(){
    view.addSubview(collectionView)
    
    collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
  }
  
}

//MARK: UICollectionViewDataSource

extension HomeViewController: UICollectionViewDataSource{
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return superheroes.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.mainCell, for: indexPath) as! HomeCell
    cell.superhero = superheroes[indexPath.item]
    return cell
  }
  
}

//MARK: UICollectionViewDelegate

extension HomeViewController: UICollectionViewDelegate{
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let detailController = DetailViewController()
    detailController.superhero = superheroes[indexPath.item]
    navigationController?.pushViewController(detailController, animated: true)
  }
  
}

//MARK: UICollectionViewDelegateFlowLayout

extension HomeViewController: UICollectionViewDelegateFlowLayout{
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 16
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 16
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellWidth: CGFloat = view.frame.width / 2 - 24
    return CGSize(width: cellWidth, height: cellWidth)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
  }
  
}

//MARK: Constants

extension HomeViewController{
  
  fileprivate struct Identifiers{
    static let mainCell = "mainCell"
  }
  
}

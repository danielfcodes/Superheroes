//
//  DetailViewController.swift
//  SuperHeroes
//
//  Created by Daniel Fernandez on 11/7/17.
//  Copyright © 2017 Ronteq. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController{
  
  fileprivate lazy var tableView: UITableView = {
    let tv = UITableView()
    tv.translatesAutoresizingMaskIntoConstraints = false
    tv.delegate = self
    tv.dataSource = self
    tv.register(DetailCell.self, forCellReuseIdentifier: Identifiers.biographyCell)
    return tv
  }()
  
  var superhero: Superhero!
  
}

//MARK: Life cycle

extension DetailViewController{
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    initialSetup()
  }
  
}

//MARK: Initial setup

extension DetailViewController{
  
  fileprivate func initialSetup(){
    view.backgroundColor = UIColor.white
    navigationItem.title = "Detail"
    setupViews()
  }
  
  fileprivate func setupViews(){
    setupTableView()
  }
  
  fileprivate func setupTableView(){
    view.addSubview(tableView)
    
    tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    
    setupTableViewFooter()
  }
  
  fileprivate func setupTableViewFooter(){
    let footer = UIView()
    view.backgroundColor = UIColor.white
    tableView.tableFooterView = footer
  }
  
}

//MARK: UITableViewDelegate

extension DetailViewController: UITableViewDelegate{
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    let headerHeight: CGFloat = UIScreen.main.bounds.width / 2 + 80
    return headerHeight
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let header = DetailHeader()
    header.superhero = superhero
    return header
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
  
}

//MARK: UITableViewDataSource

extension DetailViewController: UITableViewDataSource{
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: Identifiers.biographyCell, for: indexPath) as! DetailCell
    cell.biographyLabel.text = superhero.biography
    return cell
  }
  
}

//MARK: Constants{

extension DetailViewController{
  
  fileprivate struct Identifiers{
    static let biographyCell = "biographyCell"
  }
  
}


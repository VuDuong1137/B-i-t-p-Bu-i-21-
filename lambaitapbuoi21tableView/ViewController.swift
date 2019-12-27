//
//  ViewController.swift
//  lambaitapbuoi21tableView
//
//  Created by Dương chãng on 12/26/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let TableView: UITableView = {
        let TableView = UITableView()
        TableView.translatesAutoresizingMaskIntoConstraints = false
        //TableView.backgroundColor = .red
     return TableView
    }()
    var word : [Word]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(TableView)
        setuplayout()
        setupData()
configTable()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.8557389148, blue: 0.5954197941, alpha: 1)
    }

    func configTable(){
        // gán delegate, datasource cho tableView
        TableView.delegate = self
        TableView.dataSource = self
    }
    func setupData(){
        word = [
            Word(country: "Nước Anh", betefull: "Xứ Sở Xương Mù", imageName: "Nước Anh"),
            Word(country: "Nước Nga", betefull: "Bạn Của Việt Nam", imageName: "Nước Nga"),
            Word(country: "Nước PháP", betefull: "Có Tháp EFFEN", imageName: "Nước Pháp"),
            Word(country: "Nước Thái lan", betefull: "Bên Cạnh Nước Việt Nam", imageName: "Nước Thái Lan"),
            Word(country: "Nước Việt Nam", betefull: "Có Hồ Gươm", imageName: "Nước Việt Nam"),
            Word(country: "Nước Ý", betefull: "Còn là Nước ITALYA", imageName: "Nước Ý")
        
        ]
    }
    
    
    func setuplayout() {
        TableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        TableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        TableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
       
        TableView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        //TableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return word!.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        cell = TableView.dequeueReusableCell(withIdentifier: "anh yêu em ")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "anh yêu em")
        }
        cell?.textLabel?.text = word![indexPath.row].country
        cell?.detailTextLabel?.text = word![indexPath.row].betefull
        cell?.imageView?.image = UIImage(named: word![indexPath.row].imageName)
        return cell!
    }
}


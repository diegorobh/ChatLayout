//
//  ViewController.swift
//  Diego
//
//  Created by diego paredes on 15/10/19.
//  Copyright © 2019 diego paredes. All rights reserved.
//

import UIKit
import Foundation

struct itemMessage {
    var person : Int
    var message : String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var listPersons = [itemMessage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //registering cells
        registerCells()
        //init demo data
        initDemoData()
    }
    
    func initDemoData(){
        listPersons.append(itemMessage(person: 1,message: "Good Morning dear friend, how are you?"))
        listPersons.append(itemMessage(person: 2,message: "Ohh mr clark! nice to read you XD. very good man, and you?"))
        listPersons.append(itemMessage(person: 1,message: "Very good too. I was datting with that lady that I mention you the other day..."))
    }
    
    func registerCells(){
        let cellNibLeftMessage = UINib(nibName: "TableViewCell", bundle: nil)
        let cellNibRightMessage = UINib(nibName: "RightMessageTableViewCell", bundle: nil)
        myTableView.register(cellNibLeftMessage, forCellReuseIdentifier: "_TableViewCell")
        myTableView.register(cellNibRightMessage, forCellReuseIdentifier: "_RightMessageTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPersons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellLeftMessage =  tableView.dequeueReusableCell(withIdentifier: "_TableViewCell") as? TableViewCell
        let cellRightMessage =  tableView.dequeueReusableCell(withIdentifier: "_RightMessageTableViewCell") as? RightMessageTableViewCell
        //verify rendering left or right layout message
        if(listPersons[indexPath.row].person == 1){
            cellLeftMessage?.setLabel(message: listPersons[indexPath.row].message)
            return (cellLeftMessage!)
        }else{
            cellRightMessage?.setLabel(message: listPersons[indexPath.row].message)
            return (cellRightMessage!)
        }
    }
    
}


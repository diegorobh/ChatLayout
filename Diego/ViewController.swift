//
//  ViewController.swift
//  Diego
//
//  Created by diego paredes on 15/10/19.
//  Copyright © 2019 diego paredes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cellNib = UINib(nibName: "TableViewCell", bundle: nil)
        myTableView.register(cellNib, forCellReuseIdentifier: "_TableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "_TableViewCell") as? TableViewCell
        return (cell!)

    }
    
}


//
//  ViewController.swift
//  CustomTableViewCellXib
//
//  Created by Ding on 2/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    let foods = ["Chicken Wings","Chicken Nugget","Fries","Hamburger","Steak","Ice Cream","Hot Pot","Beer","Sushi","oyster"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
                
        cell.imageContainer.image = UIImage(named: "food\(indexPath.row)")
        cell.lbFood.text = foods[indexPath.row]
        return cell
    }
}


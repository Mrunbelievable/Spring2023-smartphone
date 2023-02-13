//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ding on 1/17/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let resturants = ["McDonald's", "Kentucky Fried Chicken", "Popeyes"]
    let foods = [["Big Mac", "Fries", "Spicy Crispy Chiken Sandwich", "Chiken McNuggets"],
                 ["Tenders Box", "Chicken Sandwich", "Chicken Wings"],
                ["Shrimp Roll", "Spicy Chicken Sandwich", "10Pc Signature Chicken Bundle"]]

    
    @IBOutlet weak var tbViewTop: UITableView!
    
    @IBOutlet weak var tbViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbViewBottom.isHidden = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tbViewTop {
            return resturants.count
        } else{
            return foods.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tbViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = resturants[indexPath.row]
            return cell
        } else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let selectedIndex = tbViewTop.indexPathForSelectedRow?.row
            cell.textLabel?.text = foods[selectedIndex!][indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tbViewTop {
            tbViewBottom.isHidden = false
            tbViewBottom.reloadData()
        }
    }
}


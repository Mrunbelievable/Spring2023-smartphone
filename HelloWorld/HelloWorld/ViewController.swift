//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ding on 1/17/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Hello World"
    }
}


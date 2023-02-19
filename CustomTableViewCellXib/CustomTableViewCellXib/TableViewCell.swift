//
//  TableViewCell.swift
//  CustomTableViewCellXib
//
//  Created by Ding on 2/18/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageContainer: UIImageView!
    
    
    @IBOutlet weak var lbFood: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}

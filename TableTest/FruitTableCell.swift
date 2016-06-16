//
//  FruitTableCell.swift
//  TableTest
//
//  Created by David Le on 6/16/16.
//  Copyright © 2016 Test. All rights reserved.
//

import UIKit

class FruitTableCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

//
//  TableViewCell.swift
//  Again
//
//  Created by ahmed Maher on 3/19/16.
//  Copyright © 2016 ahmed Maher. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CellImage: UIImageView!
    @IBOutlet weak var CellTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

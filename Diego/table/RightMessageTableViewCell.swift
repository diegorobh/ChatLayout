//
//  RightMessageTableViewCell.swift
//  Diego
//
//  Created by diego paredes on 15/10/19.
//  Copyright © 2019 diego paredes. All rights reserved.
//

import UIKit

class RightMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var labelMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabel(message:String){
        labelMessage.text = message
    }
    
}

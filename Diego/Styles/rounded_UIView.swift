//
//  rounded_UIView.swift
//  Diego
//
//  Created by diego paredes on 15/10/19.
//  Copyright © 2019 diego paredes. All rights reserved.
//

import UIKit

class rounded_UIView: UIView {

    override func didMoveToWindow() {
        //self.backgroundColor = UIColor(red:0.44, green:0.44, blue:0.44, alpha:0.5)
        self.layer.cornerRadius = 8
        //self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner ,.layerMaxXMaxYCorner]
        //self.layer.masksToBounds = true // esto hace que enmascare el contenido
        self.layer.borderWidth = 4
        self.layer.borderColor = UIColor.white.cgColor
    }

}

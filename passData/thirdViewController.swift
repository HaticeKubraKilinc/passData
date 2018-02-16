//
//  thirdViewController.swift
//  passData
//
//  Created by hatice kübra kılınç on 7.02.2018.
//  Copyright © 2018 MAGNUMIUM. All rights reserved.
//

import Foundation

import UIKit

class ThirdViewController: UITableViewCell {
    @IBOutlet weak var label2: UILabel!
    
    var yazi = String()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label2.text = yazi
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

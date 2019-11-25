//
//  GitTableViewCell.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import UIKit

class GitTableViewCell: UITableViewCell {
    
    // Mark :- Outlets
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoDecriptionLabel: UILabel!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var startRatingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}


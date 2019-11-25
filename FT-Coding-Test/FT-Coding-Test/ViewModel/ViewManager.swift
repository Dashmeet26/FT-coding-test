//
//  ViewManager.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import UIKit

class ViewManager: NSObject {
    
    func numberOfItemsInSection(section: Int) -> Int {
        return section
    }
    
    func titleForItemsAtIndexPath(indexPath: NSIndexPath, gitModel: GitDetailsInfo) -> (String,String,String,String,String) {
        // returning values as Tuple
        return (gitModel.repoName ?? "",gitModel.repoDescriptions ?? "",gitModel.ownerName ?? "",gitModel.ratingStar ?? "",gitModel.ownerImageUrl ?? "")
    }
}

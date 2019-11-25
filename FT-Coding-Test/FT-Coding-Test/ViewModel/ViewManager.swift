//
//  ViewManager.swift
//  FT-Coding-Test
//
//  Created by Sridhar Agrawal on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import UIKit

class ViewManager: NSObject {
    
    func numberOfItemsInSection(section: Int) -> Int {
        return 10
    }
    
    func titleForItemsAtIndexPath(indexPath: NSIndexPath) -> (String,String,String,String,String) {
        return ("Name", "Desc","Owner","image","rating")
    }
}

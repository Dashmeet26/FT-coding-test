//
//  ViewController.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//


import UIKit

class TrendingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Mark :- Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewManager: ViewManager!
    
    //Mark :- Properties
    var gitModal = [GitDetailsInfo]()
    var gitObject = GitDetailsInfo()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewManager.numberOfItemsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GitTableViewCell", for: indexPath) as! GitTableViewCell
        configureCell(cell: cell, forRowAtIndexPath: indexPath as NSIndexPath)
        return cell
    }
    
    func configureCell(cell: GitTableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        //Implement cell label text
    }
    

}


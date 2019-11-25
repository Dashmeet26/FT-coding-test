//
//  ViewController.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//


import UIKit
import SDWebImage

class TrendingViewController: UIViewController {
    
    //Mark :- Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewManager: ViewManager!
    
    //Mark :- Properties
    var gitModel = [GitDetailsInfo]()
    var gitObject = GitDetailsInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDetialsApi()
    }
    
    func configureCell(cell: GitTableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        //Implement cell label text
        let gitModalObject = self.gitModel[indexPath.row]
        let info:(String,String,String,String,String) = viewManager.titleForItemsAtIndexPath(indexPath: indexPath, gitModel: gitModalObject)
        
        cell.repoNameLabel.text = info.0
        cell.repoDecriptionLabel.text = info.1
        cell.ownerNameLabel.text = info.2
        cell.startRatingLabel.text = info.3
        cell.ownerImageView.sd_setImage(with: URL(string: info.4), completed: nil)
    }
    
    // Mark :- Method to fetch data
    func getDetialsApi() {
        AlamofireServiceHelper.sharedServiceHelper.getApiComplictionDictionary(apiName:"" ,clouser: { (result, responseCode, error) -> (Void) in
            if error == nil {
                DispatchQueue.main.async {
                  self.gitModel = self.gitObject.getDetials(resultDic: result)
                  self.tableView.reloadData()
                }
            } else {
                print("Error")
            }
        })
    }
}

extension TrendingViewController: UITableViewDelegate,UITableViewDataSource {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return viewManager.numberOfItemsInSection(section: self.gitModel.count)
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return UITableView.automaticDimension
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "GitTableViewCell", for: indexPath) as! GitTableViewCell
           configureCell(cell: cell, forRowAtIndexPath: indexPath as NSIndexPath)
           return cell
       }
}

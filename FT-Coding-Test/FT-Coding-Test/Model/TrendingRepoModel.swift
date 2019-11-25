//
//  TrendingRepoModel.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//


import Foundation

struct  GitDetailsInfo{
        //Mark :- Properties
       var repoName:String?
       var repoDescriptions:String?
       var ownerName:String?
       var ownerImageUrl:String?
       var ratingStar:String?
    
    
    //Mark :- Method to parse response data
    func getDetials(resultDic: [String:Any]?) -> [GitDetailsInfo] {

       var dataArray = [GitDetailsInfo]()
        
        let data = resultDic?["items"] as! [Any]
            for gitData in data {
                                let itemsData = gitData as! [String:Any]
                                var itemRowModal = GitDetailsInfo()
                                itemRowModal.repoName = itemsData.validatedValue("name", expected: "" as AnyObject) as? String
                                itemRowModal.repoDescriptions = itemsData.validatedValue("description", expected: "" as AnyObject) as? String
                                let ownerData = itemsData.validatedValue("owner", expected: [String:Any]() as AnyObject) as! Dictionary<String, Any>
                                itemRowModal.ownerName = ownerData.validatedValue("login", expected: "" as AnyObject) as? String
                                itemRowModal.ownerImageUrl = ownerData.validatedValue("avatar_url", expected: "" as AnyObject) as? String
        //                        expertRowModal.ratingStar = itemsData.validatedValue("TIME", expected: "" as AnyObject) as? String
                                itemRowModal.ratingStar = "5"
                                dataArray.append(itemRowModal)
        }
        return dataArray;
    }
}

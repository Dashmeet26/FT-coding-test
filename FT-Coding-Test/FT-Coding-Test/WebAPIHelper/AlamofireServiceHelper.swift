//
//  AlamofireServiceHelper.swift
//  FT-Coding-Test
//
//  Created by Dashmeet Singh on 25/11/19.
//  Copyright © 2019 Dashmeet Singh. All rights reserved.
//

import Foundation
import Alamofire
import MBProgressHUD
import UIKit


class AlamofireServiceHelper:NSObject {
    
    typealias ComplitionClouserArray = ([Any]?, String?, String?) -> Void
    typealias ComplitionClouserDictionary = ([String:Any]?, String?, String?) -> Void
    var responseCode:UInt8?
    let baseUrl = "https://api.github.com/search/repositories?q=created:%3E2017-10-22&sort=stars&order=desc"
    let headers : HTTPHeaders = ["Content-Type":"application/json"]
    class var sharedServiceHelper: AlamofireServiceHelper {
        struct Static {
            static let serviceInstance: AlamofireServiceHelper = AlamofireServiceHelper()
        }
        return Static.serviceInstance
    }
    
    // Mark :- Method to fetch API response
    func getApi(apiName:String,clouser:@escaping ComplitionClouserArray) {
        
        _ = UserDefaults.standard.value(forKey: "AccessToken") ?? ""
        
        let parameter: [String: String] = [
            "data" : ""
        ]
        print(parameter)
        
        Alamofire.request(baseUrl, method: .get, parameters: parameter, encoding: URLEncoding.queryString, headers: headers).responseJSON{ (responce) in
            print(responce.result)
            switch responce.result{
            case .success:
                print(responce.result)
                do {
                    let data = responce.data
                    if let str = responce.request {
                        print("~~~URL~~~\n", str)
                    }
                    
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    if let responceResult = json as? [String: Any] {
                        print(responceResult)
                        if  "success" == responceResult["result"] as! String{
                            let accessToken = responceResult["ACCESS_TOKEN"]
                            if UserDefaults.standard.value(forKey: "AccessToken") == nil {
                                UserDefaults.standard.set(accessToken, forKey: "AccessToken")
                            }
                            guard let responceData = responceResult["data"]  else{
                                clouser(nil,nil,nil)
                                return
                                
                            }
                            print(responceData)
                            clouser(responceData as? [Any],nil,nil)
                            
                        }else if "error" == responceResult["result"] as! String{
                            let error = responceResult["error"] as! [String:Any]
                            let errorCode = error["code"] as! String
                            let errorMsg = error["msg"] as! String
                            clouser(nil,errorCode,errorMsg)
                        }else{
                            clouser(nil,nil,"202")
                        }
                        
                    } else {
                        print("JSON is invalid")
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
                
            case .failure:
                
                break
            }
        }
    }
    
    
    func getApiComplictionDictionary(apiName:String,clouser:@escaping ComplitionClouserDictionary) {
        
        _ = UserDefaults.standard.value(forKey: "AccessToken") ?? ""
        
        let parameter: [String:String] = [
            "data" : ""
        ]
        print(parameter)
        self.progressHud(status: true)
        Alamofire.request(baseUrl, method: .get, parameters: parameter, encoding: URLEncoding.queryString, headers: headers).responseJSON{ (responce) in
             self.progressHud(status: false)
            switch responce.result{
            case .success:
                print(responce.result)
                do {
                    let data = responce.data
                    if let str = responce.request {
                        print("~~~URL~~~\n", str)
                    }
                    
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    if let responceResult = json as? [String: Any] {
                        print(responceResult)
                        if !responceResult.keys.contains("result"){
                            clouser(responceResult,nil,nil)
                        } else if  "success" == responceResult["result"] as? String {
                            let accessToken = responceResult["ACCESS_TOKEN"]
                            if UserDefaults.standard.value(forKey: "AccessToken") == nil {
                                UserDefaults.standard.set(accessToken, forKey: "AccessToken")
                            }
                            guard let responceData = responceResult["data"] as? [String:Any] else{
                                if let dataResponce = responceResult["data"]{
                                    if dataResponce is String{
                                        clouser(responceResult,nil,nil)
                                    }
                                }else{
                                    clouser(nil,nil,nil)
                                }
                                return
                            }
                            print(responceData)
                            clouser(responceData,nil,nil)
                            
                        } else if "error" == responceResult["result"] as! String {
                            let error = responceResult["error"] as! [String:Any]
                            let errorCode = error["code"] as! String
                            let errorMsg = error["msg"] as! String
                            clouser(nil,errorCode,errorMsg)
                        } else {
                            clouser(nil,nil,"202")
                        }
                        
                    } else {
                        print("JSON is invalid")
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
                
                
            case .failure:
                break
            }
        }
    }
    
    func progressHud(status: Bool) {
           
           DispatchQueue.main.async(execute: {
            var window: UIWindow?
           // let appDelegate = UIApplication.shared.delegate as? AppDelegate
            var hud = MBProgressHUD(for: window ?? UIView())
               if status {
                   if hud == nil {
                       hud = MBProgressHUD.showAdded(to: window ?? UIView(), animated: true)
                   }
                   hud!.layer.cornerRadius = 8.0
                hud!.bezelView.color = .black
                   hud!.margin = 12
                   UIActivityIndicatorView.appearance(whenContainedInInstancesOf: [MBProgressHUD.self])
               } else {
                    hud?.hide(animated: true)
               }
           })
       }
    
}

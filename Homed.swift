//
//  Homed.swift
//  twitter
//
//  Created by HIKARI on 2017/02/08.
//  Copyright © 2017年 hikari. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON

class Homedatasource: Datasource ,JSONDecodable {
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [userfooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [userheader.self]
    }
    
    let users :[User]
    required init(json: JSON) throws {
        print(json)
        
        var users = [User]()
        let array = json["users"].array
        for userjson in array! {
            
            
                         let user = User(json: userjson)
            users.append(user)
            
            
            }
        var tweets = [tweet]()
        let tweetjsonarray = json["tweets"].array
        for tweetjson in tweetjsonarray! {
            let userjson = tweetjson["user"]
            let user = User(json: userjson)
    
            let message = tweetjson["message"].stringValue
            let twitter = tweet(user: user, message: message)
            tweets.append(twitter)
        }
        self.users = users
        self.tweets = tweets
    }
 
    var tweets : [tweet]
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
       return users.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [usercell.self,tweetcell.self]
    }
    override func numberOfSections() -> Int {
        return 2
    }
}

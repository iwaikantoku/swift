//
//  users.swift
//  twitter
//
//  Created by HIKARI on 2017/02/09.
//  Copyright © 2017年 hikari. All rights reserved.
//

import UIKit
import SwiftyJSON


struct User {
    let name :String
    let username :String
    let biotext :String
    let profileimage : UIImage
    
    init(json:JSON) {
        self.name = json["name"].stringValue
        self.username = json["username"].stringValue
        self.biotext = json["bio"].stringValue
        self.profileimage = UIImage()
    }
}

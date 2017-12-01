//
//  service.swift
//  twitter
//
//  Created by HIKARI on 2017/02/09.
//  Copyright © 2017年 hikari. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct service {
    let tron = TRON(baseURL:"https://api.letsbuildthatapp.com")
 
    
    class error : JSONDecodable {
        required init(json:JSON) throws {
            
        }
    }
    static let sharedinstance = service()
    
    func fetchhomefeed(completion:@escaping (Homedatasource) -> ()) {
        let request : APIRequest<Homedatasource, error> = tron.request("/twitter/home")
        request.perform(withSuccess :{ (homedatasource) in
            completion(homedatasource)
            
            //self.datasource = homedatasource
        }) {(err) in }
        
    }
}

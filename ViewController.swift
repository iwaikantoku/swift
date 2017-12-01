//
//  ViewController.swift
//  JSON
//
//  Created by HIKARI on 2017/07/28.
//  Copyright © 2017年 HIKARI. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{

    @IBOutlet weak var tableview: UITableView!
    
    var tableData : [[String:AnyObject]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let url = Bundle.main.url(forResource: "friends", withExtension: "json")
        
        if let url = url{
            let data  = NSData(contentsOf: url)
           
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: data as! Data, options: .allowFragments)
                if let object = jsonObject as? [String:AnyObject] {
                    if let allfriends = object["friends"] as? [[String:AnyObject]]{
                        tableData = allfriends
                        tableview.reloadData()
                    }
                    
                }
               
            } catch  {
               print("error")
        }
    }

    
    

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "JSONcell", for: indexPath)
        
        let friend = tableData[indexPath.row]
        let name = friend["fullName"] as? String
        let year = friend["dob"] as? String
        
        cell.textLabel?.text = name
        cell.detailTextLabel?.text = year
        return cell
    }
}


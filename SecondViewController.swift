//
//  SecondViewController.swift
//  合コン管理アプリ
//
//  Created by HIKARI on 2017/09/24.
//  Copyright © 2017年 HIKARI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var btn1: UIBarButtonItem!
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var dp: UIDatePicker!
    
    @IBAction func changed(_ sender: UIDatePicker) {
        let date1 = dp.date
         UserDefaults.standard.set(date1, forKey: "date")
    }
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tf1.delegate = self
        tf2.delegate = self
        tf3.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
        UserDefaults.standard.set(tf1, forKey: "key1")
        UserDefaults.standard.set(tf2, forKey: "key2")
        UserDefaults.standard.set(tf3, forKey: "key3")
        return true
    }
    
}

//
//  homedatasourcecontroller+navbar.swift
//  twitter
//
//  Created by HIKARI on 2017/02/09.
//  Copyright © 2017年 hikari. All rights reserved.
//

import UIKit

extension homedatasourcecontroller {
     func setnavitem() {
        rightitems()
        leftitems()
        remain()
        
    }
    
    private func remain() {
        let titleimageview = UIImageView(image: #imageLiteral(resourceName: "twitter.png"))
        titleimageview.contentMode = .scaleAspectFit
        titleimageview.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.titleView = titleimageview
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        //navbarの線消す
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        let navseparator = UIView()
        navseparator.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navseparator)
        navseparator.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
    }
    private func leftitems(){
        
        let followbtn = UIButton(type: .system)
        followbtn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        followbtn.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        followbtn.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followbtn)
        
    }
    private func rightitems(){
        let searhbtn = UIButton(type: .system)
        searhbtn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        searhbtn.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        btn.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: searhbtn),UIBarButtonItem(customView:btn)]
        
        
    }
}

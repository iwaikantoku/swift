//
//  cells.swift
//  twitter
//
//  Created by HIKARI on 2017/02/08.
//  Copyright © 2017年 hikari. All rights reserved.
//

import LBTAComponents
 let twitter = UIColor(r: 61, g: 167, b: 244)
class userfooter :DatasourceCell {
    let textlabel :UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = twitter
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(textlabel)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        let whiteview = UIView()
        whiteview.backgroundColor = .white
        addSubview(whiteview)

        textlabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        whiteview.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 14, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

class userheader: DatasourceCell {
    let textlabel :UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    override func setupViews() {
        super.setupViews()
    addSubview(textlabel)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
         backgroundColor = .white
         textlabel.fillSuperview()
        
        textlabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}



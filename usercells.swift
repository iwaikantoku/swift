//
//  usercells.swift
//  twitter
//
//  Created by HIKARI on 2017/02/09.
//  Copyright © 2017年 hikari. All rights reserved.
//

import LBTAComponents
class usercell: DatasourceCell {
    override var datasourceItem: Any?{
        didSet{
            guard let user = datasourceItem as? User else {return}
            namelabel.text = user.name
            usernamelabel.text = user.username
            biotextview.text = user.biotext
            profileiv.image = user.profileimage
        }
    }
    let profileiv :UIImageView = {
        let imageview = UIImageView()
        imageview.image = #imageLiteral(resourceName: "1.png")
        
        return imageview
        
    }()
    
    let namelabel : UILabel = {
        let label = UILabel()
        label.text = "美和　瑛"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let usernamelabel: UILabel = {
        let label = UILabel()
        label.text = "@easypeasy516"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.gray
        
        return label
    }()
    
    let biotextview :UITextView = {
        let textview = UITextView()
        textview.text = "university tokyo 2nd economics/ kaisei highschool baseball team/68th team blue"
        textview.font = UIFont.systemFont(ofSize: 15)
        return textview
    }()
    
    let followbtn : UIButton = {
        let button = UIButton()
        
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitter.cgColor
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        
        button.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -60, bottom: 0, right: 0)
        button.setTitleColor(twitter, for: .normal)
        return button
    }()
    override func setupViews() {
        super.setupViews()
        
        addSubview(namelabel)
        addSubview(profileiv)
        addSubview(usernamelabel)
        addSubview(biotextview)
        addSubview(followbtn)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        backgroundColor = .white
        
        
        
        profileiv.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        namelabel.anchor(profileiv.topAnchor, left: profileiv.rightAnchor, bottom: nil, right: followbtn.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernamelabel.anchor(namelabel.bottomAnchor, left: namelabel.leftAnchor, bottom: nil, right: namelabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        biotextview.anchor(usernamelabel.bottomAnchor, left: usernamelabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followbtn.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
        
        
    }
}

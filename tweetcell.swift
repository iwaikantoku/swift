//
//  tweetcell.swift
//  twitter
//
//  Created by HIKARI on 2017/02/09.
//  Copyright © 2017年 hikari. All rights reserved.
//

import LBTAComponents

class tweetcell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet{
            guard let twet = datasourceItem as? tweet else { return}
            
            let attribute =  NSMutableAttributedString(string: twet.user.name, attributes: [NSFontAttributeName:UIFont.boldSystemFont(ofSize: 16)])
            
            
            let username = "  \(twet.user.username)\n"
            attribute.append(NSAttributedString(string:username, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15),NSForegroundColorAttributeName:UIColor.gray]))
            
            let paragraph = NSMutableParagraphStyle()
            paragraph.lineSpacing = 4
            let range = NSMakeRange(0, attribute.string.characters.count)
            attribute.addAttribute(NSParagraphStyleAttributeName, value: paragraph, range: range)
            
            attribute.append(NSAttributedString(string: twet.message, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15)]))
            
        
            messageview.attributedText = attribute
            
        }
    }
    
    let messageview: UITextView = {
        let tv = UITextView()
        tv.text = ""
        tv.backgroundColor = .clear
        return tv
    }()
    
    let profileiv :UIImageView = {
        let imageview = UIImageView()
        imageview.image = #imageLiteral(resourceName: "1.png")
        
        return imageview
        
    }()
    
    let replybtn : UIButton = {
       let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        
        return btn
        
    }()
    let retweetbtn : UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        
        return btn
        
    }()
    let fabbtn : UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        
        return btn
        
    }()
    let directbtn : UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "twitter.png"), for: .normal)
        
        return btn
        
    }()
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        backgroundColor = .white
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(messageview)
        addSubview(profileiv)
       
        profileiv.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        messageview.anchor(topAnchor, left: profileiv.rightAnchor , bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 5, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        /* replybtn.anchor(nil, left: messageview.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)

        retweetbtn.anchor(nil, left: replybtn.rightAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 15, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)*/
        
        setupbottom()
    }
    fileprivate func     setupbottom(){
        let replyview = UIView()
        //replyview.backgroundColor = .red
        
        let retweetview = UIView()
        //retweetview.backgroundColor = .red

        let fabview = UIView()
        //fabview.backgroundColor = .red
        
        let directview = UIView()
        //directview.backgroundColor = .red

        let stsck = UIStackView(arrangedSubviews: [replyview,retweetview,fabview,directview])
        stsck.axis = .horizontal
        stsck.distribution = .fillEqually
        addSubview(stsck)
        stsck.anchor(nil, left: messageview.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        addSubview(retweetbtn)
        addSubview(replybtn)
        addSubview(fabbtn)
        addSubview(directbtn)
        
        replybtn.anchor(replyview.topAnchor, left: replyview.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        retweetbtn.anchor(retweetview.topAnchor, left: retweetview.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        fabbtn.anchor(fabview.topAnchor, left: fabview.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
      directbtn.anchor(directview.topAnchor, left: directview.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    }
}

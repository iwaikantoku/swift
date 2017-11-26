//
//  HomeController.swift
//  twitter
//
//  Created by HIKARI on 2017/02/08.
//  Copyright © 2017年 hikari. All rights reserved.
//

import UIKit


class wordcell: UICollectionViewCell {
    override init(frame:CGRect){
        super.init(frame: frame)
        setup()
    }
    let wordlebel : UILabel = {
        let label = UILabel()
        label.text = "test test test"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    func setup(){
        addSubview(wordlebel)
        backgroundColor = .yellow
        //レイアウト方法
        wordlebel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
         wordlebel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
         wordlebel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
         wordlebel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class HomeController: UICollectionViewController ,UICollectionViewDelegateFlowLayout {
   let cellid = "cellid"
    let headerid = "headerid"
    let footerid = "footerid"
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .white
        collectionView?.register(wordcell.self, forCellWithReuseIdentifier: cellid)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerid)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerid)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellid, for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        if kind == UICollectionElementKindSectionHeader{
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerid, for: indexPath)
        header.backgroundColor = .blue
        return header
        } else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerid, for: indexPath)
           footer.backgroundColor = .red
            return footer
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}

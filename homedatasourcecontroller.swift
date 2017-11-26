//
//  homedatasource.swift
//  twitter
//
//  Created by HIKARI on 2017/02/08.
//  Copyright © 2017年 hikari. All rights reserved.
//

import LBTAComponents
import TRON
import SwiftyJSON


class homedatasourcecontroller :DatasourceController {
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionViewLayout.invalidateLayout()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor(r: 232, g: 246, b: 251)
        setnavitem()
       
        service.sharedinstance.fetchhomefeed { (homedatasource) in
            self.datasource = homedatasource
        }
    }
  
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let user =  self.datasource?.item(indexPath) as? User{
            
            let approx = view.frame.width - 76
            let size = CGSize(width: approx, height: 1000)
            let attributes = [NSFontAttributeName :UIFont.systemFont(ofSize: 15)]
            
            let estimatedframe = NSString(string: user.biotext).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedframe.height + 66)
        }
        return CGSize(width: view.frame.width, height:200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 1 {
            return.zero
        }
        return CGSize(width: view.frame.width, height: 50)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        if section == 1 {
            return.zero
        }
        return CGSize(width: view.frame.width, height: 64)
        
    }
}

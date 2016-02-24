//
//  HomeViewController.swift
//  Shrimp500px
//
//  Created by 振亮 孙 on 16/2/19.
//  Copyright © 2016年 papa.studio. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {
    
    var collectionView: UICollectionView!
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        log.warning("step 2")
        
        // 注册xib组件
        collectionView.registerClass(CustomizedCell.self, forCellWithReuseIdentifier: NibNames.WorkCell)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.backgroundColor = UIColor.lightGrayColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        log.warning("step 1")
        collectionView = UICollectionView(frame: ScreenBounds, collectionViewLayout: UICollectionViewFlowLayout())
        self.view.addSubview(collectionView)
        collectionView.snp_makeConstraints { make in
            make.edges.equalTo(self.view)
        }
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(NibNames.WorkCell, forIndexPath: indexPath) as! CustomizedCell//WorkCell
        
        cell.backgroundColor = UIColor.purpleColor()
        log.info("item render call")
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let size = CGSizeMake(ScreenWidth, 100)
        
        return size
    }
    
}
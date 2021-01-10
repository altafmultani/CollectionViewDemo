//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by helpmac on 23/10/20.
//  Copyright © 2020 TechnoTouch Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        galleryCollectionView.delegate = self
        galleryCollectionView.dataSource = self
        galleryCollectionView.reloadData()
        
        galleryCollectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")

        

        
    }
    //MARK: - Colllectionview Method
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100//self.selectedImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell",for:indexPath) as! ImageCollectionViewCell

        cell.backgroundColor = UIColor.clear
        return cell;
    }
    //For Size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100 , height: 100)
    }

}


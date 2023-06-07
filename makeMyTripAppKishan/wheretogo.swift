//
//  wheretogo.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 27/04/23.
//

import UIKit

class wheretogo: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout ,UICollectionViewDataSource {
    
    

  
    @IBOutlet weak var i4: UIButton!
    @IBOutlet weak var i3: UIButton!
    @IBOutlet weak var i2: UIButton!
    @IBOutlet weak var i1: UIButton!
  
    var arr = [21,22,23,24,25]
    var arr1 = [11,12,13,11,12,13]
    var arr2 = ["International","Honeymoon","Beach","Romentic","Mountain"]
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv{
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)  as! CollectionViewCell4
            cell.image.layer.cornerRadius = 20
            cell.image.layer.masksToBounds = true
        cell.image.image = UIImage(named: arr[indexPath.row].description)
            cell.l1.text = arr2[indexPath.row].description
        return cell
        }
        let cells = cv2.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath)  as! CollectionViewCell5
        cells.image2.layer.cornerRadius = 70
        cells.image2.layer.masksToBounds = true
        cells.l1.text = arr2[indexPath.row].description
        
    cells.image2.image = UIImage(named: arr1[indexPath.row].description)
        
    return cells
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv{
        return CGSize (width: 267, height: 151)
        }
        return CGSize (width: 141, height: 209)
    }
    func setup(){
        i1.layer.cornerRadius = 10
        i1.layer.masksToBounds = true
        i2.layer.cornerRadius = 10
        i2.layer.masksToBounds = true
        i3.layer.cornerRadius = 10
        i3.layer.masksToBounds = true
        i4.layer.cornerRadius = 10
        i4.layer.masksToBounds = true
    }
    
}

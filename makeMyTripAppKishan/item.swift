//
//  ViewController3.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 14/04/23.
//

import UIKit

class item: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet var backView: UIView!
    @IBOutlet weak var realView: UIView!
    var array1 = ["Trending", "Bank Offer", "Flights", "Hotels", "Rails"]
    var array2 = [1,2,3,4,5]
    @IBOutlet weak var i1: UIImageView!
    @IBOutlet weak var i2: UIImageView!
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.realView.isHidden = true
        setup()
    }
    func setup(){
        i1.layer.cornerRadius = 10
        i1.layer.masksToBounds = true
        i2.layer.cornerRadius = 10
        i2.layer.masksToBounds = true
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv1{
            
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label1.text = "\(array1[indexPath.row])"
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
        return cell
            
        }
        let cells = cv2.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! CollectionViewCell2
        cells.img.image = UIImage(named: array2[indexPath.row].description)
        cells.layer.cornerRadius = 10
        cells.layer.masksToBounds = true
        return cells
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv1{
            return CGSize(width: 130, height: 39)
        }
        return CGSize(width: 191, height: 122)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.cv1{
        let cells = cv2.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as! CollectionViewCell2
        cells.img.image = UIImage(named: array2[indexPath.row].description)
        }
    }
   
    @IBAction func flightButtonAction(_ sender: Any) {
       
            let navigate = storyboard?.instantiateViewController(withIdentifier: "Trips") as! Trips
            navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func hotelsButtonAction(_ sender: Any) {
        
            let navigate = storyboard?.instantiateViewController(withIdentifier: "hotels") as! hotels
            navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func trainButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Error") as! Error
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func holidayButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "holidays") as! holidays
        navigationController?.pushViewController(navigate, animated: true)
    }
    func back(){
        let back = storyboard?.instantiateViewController(withIdentifier: "item") as! item
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func allButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "Error") as! Error
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func barButtonAction(_ sender: Any) {
        self.realView.isHidden = false
        
    }
    
    @IBAction func tapOnMainViewAction(_ sender: Any) {
        self.realView.isHidden = true
    }
}

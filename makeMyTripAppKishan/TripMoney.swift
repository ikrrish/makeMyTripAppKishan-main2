//
//  TripMoney.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 20/04/23.
//

import UIKit

class TripMoney: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img: UIImageView!
    var array = ["I recently used MMT to book my flight and hotel for a weekend getaway, and I was very impressed with the app. It was easy to navigate and had a wide variety of options for my travel dates and destination. I particularly appreciated the ability to filter my search results based on my preferences, which saved me time and helped me find exactly what I was looking for. The real-time flight tracking feature was also very helpful in keeping me updated on any changes to my flight schedule.","I recently downloaded and used MakeMyTrip, and I must say, I'm thoroughly impressed. The app is well-designed, easy to navigate, and has a plethora of useful features that make my travel planning experience hassle-free and enjoyable. The interface is intuitive and aesthetically pleasing, making it easy to find and book flights, hotels, and car rentals. The app's search function is fast and accurate, allowing me to quickly find the best deals for my travel dates and destination."]
    var array2 = ["-Piyush Bhagat","-Kishan Govindiya"]
    @IBOutlet weak var cv1: UICollectionView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell3
        cell.reviewLabel.text = array[indexPath.row]
        cell.nameLabel.text = array2[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 391, height: 165)
    }
    func setup(){
        cv1.layer.cornerRadius = 10
        cv1.layer.masksToBounds = true
        img.layer.cornerRadius = 10
        img.layer.masksToBounds = true
        img2.layer.cornerRadius = 10
        img2.layer.masksToBounds = true
        img3.layer.cornerRadius = 10
        img3.layer.masksToBounds = true
        img4.layer.cornerRadius = 10
        img4.layer.masksToBounds = true
    }
}

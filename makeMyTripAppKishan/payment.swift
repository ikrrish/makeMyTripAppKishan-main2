//
//  payment.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 19/06/23.
//

import UIKit

class payment: UIViewController, UICollectionViewDelegate & UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var cv: UICollectionView!
    var arrayForImage = [111,222,333,444,555,666,777]
    var arrayForOption = ["All UPI Options","Credit/Debit/ATM Card","Book Now Pay Later","Net Banking","Gift Cards, Wallets & More","EMI","GooglePay"]
    var arrayForDetails = ["Pay Directly From Your Bank Account","VisaMasterCard,Amex,Rupay And More","Tripmoney,Lazypay,Simpl,ZestMoney,ICICI,HDFC","All Major Banks Available", "Gift cards,Mobikwik,AmazonPay","Credit/Debit Card EMI available","Pay with Google Pay"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayForImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell6
        cell.image.image = UIImage(named: arrayForImage[indexPath.row].description)
        cell.mainLable.text = arrayForOption[indexPath.row]
        cell.details.text = arrayForDetails[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 374, height: 73)
    }
}

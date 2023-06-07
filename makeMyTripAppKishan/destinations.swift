//
//  destinations.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 31/05/23.
//

import UIKit

class destinations: UIViewController,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
   
    @IBOutlet weak var cv: UICollectionView!
    var array = ["1","2","3","4","5","6"]
    var name = ["Agra","Mussoorie","Jaipur","Delhi","Mumbai","Goa"]
    var details = ["Home For World's Finest Mughal Monuments","A Charming Hilly Escape Fro Delhi","The Capital and the largest city of Rajasthan","The Capital Of India","City Of Dreams","City Of Beautifull Beaches"]
    var img = [6666,1111,3333,4444,5555,2222]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cvForDestinations
        cell.lbForNo.text = "\(array)"
        cell.lbForName.text = "\(name)"
        cell.lbForDetails.text = "\(details)"
        cell.img.image = UIImage(named: img[indexPath.row].description)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 374, height: 312)
        
    }
    @IBAction func back(_ sender: Any) {
    }
    

  
}

//
//  hotels.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 13/05/23.
//

import UIKit

class hotels: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "item") as! item
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func bookAction(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "tripbook") as! tripbook
        navigationController?.pushViewController(back, animated: true)
    }
    
}

//
//  tripbook.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 25/05/23.
//

import UIKit

class tripbook: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBAction func continueButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "payment") as! payment
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func back(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "item") as! item
        navigationController?.popToRootViewController(animated: true)
    }
    

   
}

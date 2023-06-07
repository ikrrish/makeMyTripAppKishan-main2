//
//  holidays.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 13/05/23.
//

import UIKit

class holidays: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBAction func back(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "item") as! item
        navigationController?.popToRootViewController(animated: true)
    }
    

}

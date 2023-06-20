//
//  otpPage.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 12/06/23.
//

import UIKit

class otpPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func ugklygijgghk(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "setup") as! setup
        navigationController?.pushViewController(navigate, animated: true)
    }
    @IBAction func back(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.popToRootViewController(animated: true)
    }
    

 

}

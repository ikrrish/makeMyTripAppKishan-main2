//
//  ViewController2.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 14/04/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
       
    }
    func setup(){
        img.layer.cornerRadius = 20
        img.layer.masksToBounds = true
        continueButton.layer.cornerRadius = 20
        continueButton.layer.masksToBounds = true
    }
    @IBAction func continueButtonAction(_ sender: Any) {
        
        let navigate = storyboard?.instantiateViewController(withIdentifier: "setup") as! setup
        navigationController?.pushViewController(navigate, animated: true)
    }
   
    @IBAction func signinButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "tabbar") as! tabbar
        navigationController?.pushViewController(navigate, animated: true)
    }
}

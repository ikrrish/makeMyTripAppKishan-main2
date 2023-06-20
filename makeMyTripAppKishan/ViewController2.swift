//
//  ViewController2.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 14/04/23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var noTextField: UITextField!
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
        if noTextField.text!.count == 10{
            let navigate = storyboard?.instantiateViewController(withIdentifier: "otpPage") as! otpPage
            navigationController?.pushViewController(navigate, animated: true)
            
        }
        else{
            alert(message: "Enter Valid Number")

        }
        func alert(message: String){
            let alert = UIAlertController(title: "Error", message: "\(message)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }
    }
    @IBAction func signInButton(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "otpPage") as! otpPage
        navigationController?.pushViewController(navigate, animated: true)
    }
}

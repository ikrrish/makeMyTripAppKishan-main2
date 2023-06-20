//
//  setup.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 16/05/23.
//

import UIKit

class setup: UIViewController, UIImagePickerControllerDelegate&UINavigationControllerDelegate{

    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var goButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        goButton.layer.cornerRadius = 20
        goButton.layer.masksToBounds = true
        profilePhoto.layer.cornerRadius = 130
        profilePhoto.layer.masksToBounds = true
    }
    func showAlert(){
        let alert = UIAlertController.init(title: "Your Choice", message: "", preferredStyle:.actionSheet)
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: {_ in self.openGallery()}))
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        profilePhoto.image = info[.editedImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    func openGallery(){
        let gallery = UIImagePickerController()
        gallery.delegate = self
        gallery.allowsEditing = true
        gallery.sourceType = .photoLibrary
        present(gallery, animated: true, completion: nil)
    }
    @IBAction func imgButtonAction(_ sender: Any) {
        showAlert()
    }
    @IBAction func backButttonAction(_ sender: Any) {
        let back = storyboard?.instantiateViewController(withIdentifier: "item") as! item
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func goButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "tabbar") as! tabbar
        navigationController?.pushViewController(navigate, animated: true)
    }
    func saveInfo(){
        
    }
}

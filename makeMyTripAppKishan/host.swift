//
//  host.swift
//  makeMyTripAppKishan
//
//  Created by R82 on 05/05/23.
//

import UIKit

class host: UIViewController {

    @IBOutlet weak var i3: UIImageView!
    @IBOutlet weak var i2: UIImageView!
    @IBOutlet weak var i1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        i1.layer.cornerRadius = 20
        i1.layer.masksToBounds = true
        i2.layer.cornerRadius = 20
        i2.layer.masksToBounds = true
        i3.layer.cornerRadius = 20
        i3.layer.masksToBounds = true
    }

}

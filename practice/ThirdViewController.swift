//
//  ThirdViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 5/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    var email: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailText.text = email
    }
}

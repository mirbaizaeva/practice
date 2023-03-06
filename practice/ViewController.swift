//
//  ViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 5/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var eye: UIButton!
    
    private var isHidden = true

    @IBAction func eye(_ sender: Any) {
        if isHidden{
            eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            password.isSecureTextEntry = false
        }else{
            eye.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            password.isSecureTextEntry = true
        }
        isHidden = !isHidden
    }
    
    private func isTexstField(textField: UITextField)-> Bool{
        guard let text = textField.text else{return false}
        if text.isEmpty{
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Заполните, пожалуйста"
            return false
        }else{
            textField.layer.borderWidth = 0
            return true
        }
    }

    @IBAction func login(_ sender: Any){
        if email.text?.isEmpty ?? true && password.text?.isEmpty ?? true{
            email.layer.borderWidth = 3
            password.layer.borderWidth = 3
            email.layer.borderColor = UIColor.red.cgColor
            password.layer.borderColor = UIColor.red.cgColor
        }else if (email.placeholder != nil && password.placeholder != nil){
            email.layer.borderWidth = 0
            password.layer.borderWidth = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


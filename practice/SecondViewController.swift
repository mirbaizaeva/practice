//
//  SecondViewController.swift
//  practice
//
//  Created by Nurjamal Mirbaizaeva on 5/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var secondEmail: UITextField!
    
    @IBOutlet weak var mobilNumber: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var secondEye: UIButton!
    
    var ishid = true
    @IBAction func secondEye(_ sender: Any) {
        if ishid{
            secondEye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            password.isSecureTextEntry = false
        }else{
            secondEye.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            password.isSecureTextEntry = true
        }
        ishid = !ishid
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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !isTexstField(textField: username) && !isTexstField(textField: secondEmail) && !isTexstField(textField: password) && !isTexstField(textField: mobilNumber){
            return false
    }else if !isTexstField(textField: username){
        return false
    }else if !isTexstField(textField: secondEmail){
        return false
    }else if !isTexstField(textField: mobilNumber){
        return false
    }else if !isTexstField(textField: password){
        return false
    }else{
//        ThirdViewController().email = secondEmail.text ?? ""
        return true
    }
}
    
    @IBAction func login(_ sender: Any) {
        let vc = ThirdViewController()
        let emaill = secondEmail.text
        vc.email = emaill!
//        navigationController?.pushViewController(vc, animated: true)
    }
    
//    @IBAction func login(_ sender: Any) {
//        let vc = ThirdViewController()
//        vc.email = secondEmail.text ?? ""
  //  }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToNext"{
//            let vc = ThirdViewController()
//            vc.email = secondEmail.text ?? ""
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

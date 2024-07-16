//
//  ViewController.swift
//  primeiroProjeto
//
//  Created by Pedro Botega on 07/07/24.
//

import UIKit

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.keyboardType = .emailAddress
        passwordTextField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
        
        nameTextField.delegate = self
        passwordTextField.delegate = self
        emailTextField.delegate = self
        
        loginButton.isEnabled = false
        loginButton.setTitleColor( .white.withAlphaComponent(0.4) , for: .disabled )
        loginButton.setTitleColor( .white , for: .normal )
        
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("batata")
    }
    
    func validateTextField(){
        if nameTextField.text != "" && passwordTextField.text != "" && emailTextField.text != "" {
            loginButton.isEnabled = true
        }else{
            loginButton.isEnabled = true
        }
    }
    
}
extension ViewController: UITextFieldDelegate{
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        validateTextField()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


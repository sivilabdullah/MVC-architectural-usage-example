//
//  ViewController.swift
//  MVC architectural usage example
//
//  Created by abdullah's Monterey on 1.01.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: -VARIABLES
    
    @IBOutlet weak var usernamePasswordField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    // MARK: - FUNCTIONS
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setInitViews()
    }
    private func setInitViews(){
        usernameTextField.addTarget(self, action: #selector(validateField), for: .editingChanged)
        usernamePasswordField.addTarget(self, action: #selector(validateField), for: .editingChanged)
    }
    
    @objc private func validateField(){
        loginBtn.isEnabled = usernameTextField.text != "" && usernamePasswordField.text != ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        NetworkService.shared.login(username: usernameTextField.text!, password: usernamePasswordField.text!) { succes in
            if succes{
                self.goToProfilePage()
            }else{
                print("Invalid Credentials")
            }
        }
    }
    private func goToProfilePage(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileViewController
        vc.name = NetworkService.shared.user?.username
        present(vc, animated: true)
    }
}


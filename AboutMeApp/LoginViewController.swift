//
//  ViewController.swift
//  AboutMeApp
//
//  Created by deshollow on 06.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == "user", passwordTF.text == "password" else {
            showAlert(with: "Error", and: "Wrong User Name or Password")
            return false
        }
        performSegue(withIdentifier: "welcome", sender: nil)
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.userName = userNameTF.text
    }
    
    @IBAction func loginButtonPressed() {
        shouldPerformSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "User Name", and: "it is user")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Password", and: "it is password")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}
//MARK: extension with Alert
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
            
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

//
//  ViewControllerLogin.swift
//  digitalstore
//
//  Created by Alfredo on 5/23/21.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewControllerLogin: UIViewController {
 
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var itemButton2: UIButton!
    
    @IBOutlet weak var cnsVerticalContent: NSLayoutConstraint!
    
    @IBOutlet weak var viewContent: UITextField!
    
    @IBAction func clickbtnlogin(_ sender: Any) {
        if let email = emailTextField.text, let password =
            passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {
                (result, error) in
                
                if let result = result, error == nil {
                    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                    let resultViewController = storyBoard.instantiateViewController(withIdentifier: "ViewControllerDashboard") as! ViewControllerDashboard
                    self.navigationController?.pushViewController(resultViewController, animated: true)
                    
                } else {
                    let alertController = UIAlertController(title:"Error", message: "Se ha producido un error registrando al usuario",
                        preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        
    }
    
    
    
    @IBAction func clickbtnback(_ sender: Any) {
                    self.navigationController?.popViewController(animated: true)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemButton2.layer.borderWidth = 2
        itemButton2.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.1803921569, blue: 0.6156862745, alpha: 1)
    }
    /*
    @objc func keybardWillShow(_ notification: Notification){
        let keyboardAnimationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
        
        let finalPosYViewContent = self.viewContent.frame.origin.y + self.viewContent.frame.height
        
        if finalPosYViewContent > keyboardFrame.origin.y {
            UIView.animate(withDuration: keyboardAnimationDuration){
                
            
            self.cnsVerticalContent.constant = keyboardFrame.origin.y - finalPosYViewContent
            self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification){
        let keyboardAnimationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        
        UIView.animate(withDuration: keyboardAnimationDuration){
            self.cnsVerticalContent.constant = 0
            self.view.layoutIfNeeded()
        }
    }*/
}

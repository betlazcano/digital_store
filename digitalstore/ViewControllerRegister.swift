//
//  ViewControllerRegister.swift
//  digitalstore
//
//  Created by Alfredo on 5/24/21.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth


class ViewControllerRegister: UIViewController {
    let database = Firestore.firestore()
    
    
    @IBAction func clickBtnConfirm(_ sender: Any) {
        let nameUser = nameTextField.text
        let lastNameUser = lastTextField.text
        let emailUser = emailTextField.text
        database.collection("users").addDocument(data: ["name":nameUser, "Last Name": lastNameUser, "Email": emailUser])
        
        if let email = emailTextField.text, let password =
            passwordTextField.text {
            
           
            
            Auth.auth().createUser(withEmail: email, password: password) {
                (result, error) in
                
                if let result = result, error == nil {
                    self.navigationController?.popViewController(animated: true)
                } else {
                    let alertController = UIAlertController(title:"Error", message: "Se ha producido un error registrando al usuario",
                        preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    
}

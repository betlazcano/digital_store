//
//  ViewControllerRegister.swift
//  digitalstore
//
//  Created by Alfredo on 5/23/21.
//

import UIKit
import Firebase

class ViewControllerForgot: UIViewController {
 
    
    @IBOutlet weak var emailField: UITextField!
   
    @IBAction func clickBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var itemButton3: UIButton!
        
        override func viewDidLoad() {
        super.viewDidLoad()
        
        itemButton3.layer.borderWidth = 2
        itemButton3.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.1803921569, blue: 0.6156862745, alpha: 1)
    
    }

    @IBAction func forgotPassButton(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.sendPasswordReset(withEmail: emailField.text!)
        { (error) in
            if let error = error {
                let alertController = UIAlertController(title:"Error", message: error.localizedDescription,
                                                        preferredStyle: .alert)
                                                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                                                    
                                                    self.present(alertController, animated: true, completion: nil)
                
            }
            
            let alert = UIAlertController(title: "Email enviado", message: "Se ha enviado un email para restablecer el password", preferredStyle: .alert);alert.addAction(UIAlertAction(title: "Aceptar", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

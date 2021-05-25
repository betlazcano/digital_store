//
//  ViewControllerLogin.swift
//  digitalstore
//
//  Created by Alfredo on 5/23/21.
//

import UIKit

class ViewControllerLogin: UIViewController {
 
    
    
    @IBOutlet weak var itemButton2: UIButton!
    
    @IBOutlet weak var cnsVerticalContent: NSLayoutConstraint!
    
    @IBOutlet weak var viewContent: UITextField!
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

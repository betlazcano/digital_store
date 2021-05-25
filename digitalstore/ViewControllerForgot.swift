//
//  ViewControllerRegister.swift
//  digitalstore
//
//  Created by Alfredo on 5/23/21.
//

import UIKit

class ViewControllerForgot: UIViewController {
 
    
    @IBAction func clickBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var itemButton3: UIButton!
        
        override func viewDidLoad() {
        super.viewDidLoad()
        
        itemButton3.layer.borderWidth = 2
        itemButton3.layer.borderColor = #colorLiteral(red: 0.1803921569, green: 0.1803921569, blue: 0.6156862745, alpha: 1)
    
    }
}

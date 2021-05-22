

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemButton.layer.borderWidth = 2
        itemButton.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    }
}

